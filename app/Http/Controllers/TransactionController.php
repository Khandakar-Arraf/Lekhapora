<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Transaction;
use App\Models\User;
use Dompdf\Dompdf;
use Illuminate\Http\Request;

class TransactionController extends Controller
{

    public function view($transactionId)

    {
        // Fetch the sale data based on the $transactionId (you may use the existing logic or adjust it as needed)
        $transaction = Transaction::where('order_id',$transactionId)->first();
       // dd($transaction);

        $sale = [
            'order_no' => $transaction->order_id,
            'type' => $transaction->order->type == 1 ? 'Course' : 'Product',
            'item_title' => $transaction->order->type == 1 ? $transaction->order->course->title : $transaction->order->product->name,
            'invoice' => $transaction->invoice,
            'seller' => $transaction->order->type == 1 ? $transaction->creator->name : 'In House',
            'amount' => $transaction->amount,
            'created_at' => $transaction->created_at->format('d-m-y'),
        ];
        $salesData[] = $sale;
        //dd($sale);
        // Create a view with the sale data (you can create a blade view or use a raw HTML string)
        $view = view('admin.pages.transaction.sale_invoice', compact('sale'));

        // Generate the PDF using dompdf
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view->render());
        $dompdf->setPaper('A4', 'portrait');

        // Render the PDF
        $dompdf->render();

        return $view;
        // Download the PDF with a unique filename (you can customize the filename as needed)
        // return $dompdf->stream("sale_invoice_{$transaction->order_id}.pdf");
    }
    public function invoice($transactionId)
    {
        // Fetch the sale data based on the $transactionId (you may use the existing logic or adjust it as needed)
        $transaction = Transaction::where('order_id',$transactionId)->first();

        $sale = [
            'order_no' => $transaction->order_id,
            'type' => $transaction->order->type == 1 ? 'Course' : 'Product',
            'item_title' => $transaction->order->type == 1 ? $transaction->order->course->title : $transaction->order->product->name,
            'invoice' => $transaction->invoice,
            'seller' => $transaction->order->type == 1 ? $transaction->creator->name : 'In House',
            'amount' => $transaction->amount,
            'created_at' => $transaction->created_at->format('d-m-y'),
        ];
        $salesData[] = $sale;

        // Create a view with the sale data (you can create a blade view or use a raw HTML string)
        $view = view('admin.pages.transaction.sale_invoice', compact('sale'));

        // Generate the PDF using dompdf
        $dompdf = new Dompdf();
        $dompdf->loadHtml($view->render());
        $dompdf->setPaper('A4', 'portrait');

        // Render the PDF
        $dompdf->render();

        // return $view;
        // Download the PDF with a unique filename (you can customize the filename as needed)
        return $dompdf->stream("sale_invoice_{$transaction->order_id}.pdf");
    }
    public function sale()
    {
        $transactions = Transaction::all();

        $salesData = [];

        foreach ($transactions as $item) {
            if (isset($item->order)) {
                // Determine the item type based on 'type' field
                $type = $item->order->type == 1 ? 'Course' : 'Product';

                // Determine the item title based on the item type
                $itemTitle = $type == 'Course' ? $item->order->course->title : $item->order->product->name;

                // Determine the seller based on the item type
                $seller = $type == 'Course' ? $item->creator->name : 'In House';

                // Create the sale array with the modified 'type', 'item_title', and 'seller'
                $sale = [
                    'order_no' => $item->order_id,
                    'type' => $type,
                    'item_title' => $itemTitle,
                    'invoice' => $item->invoice,
                    'seller' => $seller,
                    'amount' => $item->amount,
                    'created_at' => $item->created_at->format('d-m-y h:i:a'),
                ];

                $salesData[] = $sale;
            }
        }

        // dd($salesData);
        // Pass the salesData to the view
        return view('admin.pages.transaction.sales', compact('salesData'));
    }


    public function coursefilter(Request $request)
    {
        $teacherId = $request->input('teacherId');


        // $query = Transaction::query();

        if ($teacherId == 0) {
            $transactions = Transaction::where('teacher_id', '!=', 0)->get();
        } else {

            $transactions = Transaction::where('teacher_id', '=', $teacherId)->where('teacher_id', $teacherId)->get();
        }

        // dd($transactions);


        $response = [];

        foreach ($transactions as $item) {
            $response[] = [
                'coursetitle' => $item->order->course->title,
                'invoice' => $item->invoice,
                'creator_name' => $item->creator->name,
                'amount' => $item->amount,
                'ratio' => $item->ratio,
                'teacher' => $item->teacher,
                'owner' => $item->owner,
                'created_at' => $item->created_at->format('d-m-y h:i:a'),
            ];
        }

        return response()->json($response);
    }
    public function shopfilter(Request $request)
    {
        $studentId = $request->input('studentId');
        if ($studentId == 0) {
            $transactions = Transaction::where('teacher_id', 0)->get();
        } else {
            $transactions = Transaction::where('teacher_id', 0)->where('student_id', $studentId)->get();
        }





        // $transactions = $query->get();
        // dd($transactions);
        $response = [];

        foreach ($transactions as $item) {
            $response[] = [
                'coursetitle' => $item->order->product->name,
                'invoice' => $item->invoice,
                'student_name' => $item->student->name,
                'amount' => $item->amount,
                'ratio' => $item->ratio,
                'owner' => $item->owner,
                'created_at' => $item->created_at->format('d-m-y h:i:a'),
            ];
        }

        return response()->json($response);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function course()
    {
        $transactions = Transaction::where('teacher_id', '!=', 0)->paginate(10);
        // dd($transactions);
        $orders = Order::where('status', 1)->where('type', 1)->get();
        $studentIds = $orders->pluck('user_id')->unique();
        $students = User::whereIn('id', $studentIds)->get();
        $teacherIds = $transactions->pluck('teacher_id')->unique();
        $teachers = User::whereIn('id', $teacherIds)->get();

        return view('admin.pages.transaction.course', compact('transactions', 'teachers'));
    }

    public function shop()
    {
        $transactions = Transaction::where('teacher_id', 0)->get();
        // dd($transactions);
        $orders = Order::where('status', 1)->where('type', 2)->get();
        $studentIds = $orders->pluck('user_id')->unique();
        $students = User::whereIn('id', $studentIds)->get();
        return view('admin.pages.transaction.shop', compact('transactions', 'students'));
    }

    public function fetchCourseData()
    {
        $transactions = Transaction::where('teacher_id', '!=', 0);
        $response = [];

        foreach ($transactions as $item) {
            $response[] = [
                'coursetitle' => $item->order->course->title,
                'invoice' => $item->invoice,
                'creator_name' => $item->creator->name,
                'amount' => $item->amount,
                'ratio' => $item->ratio,
                'teacher' => $item->teacher,
                'owner' => $item->owner,
                'created_at' => $item->created_at->format('d-m-y h:i:a'),
            ];
        }

        return response()->json($response);
    }

    public function destroy(Transaction $transaction)
    {
        $order = Order::find($transaction->order_id);
        $orderdelete =  $order->delete();
        $transactiondelete =  $transaction->delete();


        if ($orderdelete && $transactiondelete) {
            return redirect()->back()->with('success', 'transaction Deleted successfully.');
        } else {
            return back()->with('error', 'transaction Delete Unsuccessfull');
        }
    }
}
