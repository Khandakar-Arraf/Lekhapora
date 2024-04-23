<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Comments;
use App\Models\Course;
use App\Models\Duration;
use App\Models\Order;
use App\Models\Product;
use App\Models\Student;
use App\Models\Subject;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PublicController extends Controller
{
    public function cp()
    {
        return view('web.pages.error.complete-profile');
    }
    public function na()
    {
        return view('web.pages.error.not-allowed');
    }

    public function index()
    {
        $courses = Course::where('status', '1')->take('8')->get();
        $teachers = User::where('role', 2)->where('allow', '1')->take(8)->get();
        return view('web.pages.index', compact('courses', 'teachers'));
    }

    public function dashboard()
    {
        if (Auth::user()->role == 0) {

            return view('admin.pages.index');
        } else {
            return redirect()->route('user.dashboard');
        }
    }

    public function chart()
    {
        if (Auth::user()->role == 0) {
            $students = User::where('role', 1)->where('allow', 1)->get();
            $teachers = User::where('role', 2)->where('allow', 1)->get();
            $users = User::where('allow', 1)->get();


            return view('admin.pages.transaction.chart', compact('students', 'teachers', 'users'));
        } else {
            return redirect()->route('user.dashboard');
        }
    }

    public function blogs()
    {
        $blogs = Blog::where('status', '1')
            ->orderBy('id', 'DESC')
            ->get();
        return view('web.pages.blog.index', compact('blogs'));
    }

    public function blogDetails($blogId)
    {
        $blog  = Blog::find($blogId);
        $comments = Comments::query()->orderBy('created_at', 'ASC')->get();
        // dd($blog);
        return view('web.pages.blog.details', compact('blog', 'comments'));
    }
    public function completeprofile()
    {

        return view('web.pages.authentication.student.complete-profile');
    }

    public function userdashboard()
    {
        $user = User::find(Auth::user()->id);
        if (Auth::user()->complete == 1) {



            return view('web.pages.dashboard.index', compact('user'));
        } else {
            return view('web.pages.authentication.student.complete-profile');
        }
    }
    public function createcourse()
    {
        $user = User::find(Auth::user()->id);

        return view('web.pages.courses.create', compact('user'));
    }

    public function editcourse($id)
    {
        $course = Course::find($id);
        $user = User::find(Auth::user()->id);

        return view('web.pages.courses.edit', compact('user', 'course'));
    }

    public function subjects()
    {
        $subjects = Subject::where('status', '1')->get();
        return view('web.pages.subject.index', compact('subjects'));
    }

    public function subjectdetails($subject)
    {
        $subjectitem = Subject::find($subject);
        $courses = Course::where('status', '1')->where('subject_id', $subject)->get();
        // dd($courses);
        return view('web.pages.subject.details', compact('courses', 'subjectitem'));
    }
    public function products()
    {
        $products = Product::where('status', '1')->get();
        return view('web.pages.product.index', compact('products'));
    }

    public function productdetails($product)
    {
        $product = Product::find($product);

        return view('web.pages.product.details', compact('product'));
    }
    public function courses()
    {
        $courses = Course::where('status', '1')->get();
        // dd($courses);
        return view('web.pages.courses.all', compact('courses'));
    }
    public function checkout($item, $type)
    {
        if ($type == 1) {
            $singleItem = Course::find($item);
        } elseif ($type == 2) {
            $singleItem = Product::find($item);
        }


        $ifordered = Order::query()->where('type', $type)->where('item_id', $singleItem)->where('user_id', Auth::user()->id)->get();

        if ($ifordered->count() > 0) {
            return redirect()->back()->with('error', 'You Have Already Purchased This Item');
        }

        // dd($singleItem);
        return view('web.pages.checkout', compact('singleItem', 'type'));
    }
    public function courseDetails($course)
    {
        $course = Course::find($course);

        return view('web.pages.courses.details', compact('course'));
    }


    public function teachers()
    {
        $teachers = User::where('role', 2)->where('allow', '1')->where('complete', '1')->get();
        return view('web.pages.teacher.index', compact('teachers'));
    }

    public function teacherdetails($teacher)
    {
        $teacher = User::find($teacher);
        $isPurchased = DB::table('courses')
            ->join('orders', 'courses.id', '=', 'orders.item_id')
            ->where('orders.user_id', Auth::user()->id)
            ->where('courses.creator_id', $teacher->id)
            ->exists();

        // dd($isPurchased);
        // $order = Order::where('user_id',Auth::user()->id)
        // dd($teacher->teacher->courses);
        return view('web.pages.teacher.details', compact('teacher', 'isPurchased'));
    }



    public function attendance()
    {
        if (Auth::user()->role == 1) {
            $courses_id = Order::where('user_id', Auth::user()->id)->where('type', 1)->where('status', 1)->pluck('item_id')->unique();
        } else {
            $courses_id = Course::where('creator_id', Auth::user()->id)->where('status', 1)->pluck('id')->unique();
        }

        $courses = Course::query()->whereIn('id', $courses_id)->get();
        $duration_id = Course::query()->whereIn('id', $courses_id)->pluck('duration')->unique();
        $durations = Duration::query()->whereIn('id', $duration_id)->get();

        return view('web.pages.attendance', compact('courses', 'durations'));
    }







    public function sales()
    {
        $user_id = Auth::user()->id;
        $transactions = Transaction::whereHas('order', function ($query) use ($user_id) {
            $query->where('teacher_id', $user_id);
        })->get();

        $saleData = [];
        $totalProfitAmount = 0;
        foreach ($transactions as $item) {
            $sale = [
                'order_no' => $item->order_id,
                'coursetitle' => $item->order->course->title,
                'course_amount' => $item->amount,
                'ratio' => $item->ratio,
                'profit_amount' => $item->teacher,
                'student_name' => $item->student->name,
                'created_at' => $item->created_at->format('d-m-y'),
            ];
            $totalProfitAmount += $item->teacher;
            $saleData[] = $sale;
        }

        return view('web.pages.dashboard.sale', compact('saleData', 'totalProfitAmount'));
    }
    public function purchase()
    {
        $user_id = Auth::user()->id;
        $transactions = Transaction::whereHas('order', function ($query) use ($user_id) {
            $query->where('user_id', $user_id);
        })->get();

        $purchasedData = [];

        foreach ($transactions as $transaction) {
            $sale = [
                'order_no' => $transaction->order_id,
                'type' => $transaction->order->type == 1 ? 'Course' : 'Product',
                'item_title' => $transaction->order->type == 1 ? $transaction->order->course->title : $transaction->order->product->name,
                'transaction_id' => $transaction->transaction_id,
                'seller' => $transaction->order->type == 1 ? $transaction->creator->name : 'In House',
                'amount' => $transaction->amount,
                'created_at' => $transaction->created_at->format('d-m-y h:i:a'),
            ];

            $purchasedData[] = $sale;
        }
        // dd($purchasedData);
        return view('web.pages.dashboard.purchase', compact('purchasedData'));
    }
}
