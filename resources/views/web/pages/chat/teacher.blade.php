@extends('web.app.app')


@section('main-body')
<div class="dashboard__content bg-light-4">
    <div class="row pb-50 mb-10">
        <div class="col-auto">

            <h1 class="text-30 lh-12 fw-700">Messages</h1>

        </div>
    </div>


    <div class="row y-gap-30">
        <div class="col-xl-4">
            <div class="rounded-16 bg-white -dark-bg-dark-1 shadow-4 h-100">
                <div class="d-flex items-center py-20 px-30 border-bottom-light">
                    <h2 class="text-17 lh-1 fw-500">Chats</h2>
                </div>

                <div class="py-30 px-30">
                    <div class="y-gap-30">
                        {{-- @php
                        dd($orders) ;
                        @endphp --}}
                        @foreach ($teacherCourses as $item)
                        <div class="d-flex justify-between">

                            <a href="{{ route('chat.show.teacher',$item->id) }}">
                                <div class="d-flex items-center">

                                    <div class="shrink-0">
                                        <img src="{{ asset('uploads') }}/courses/{{ $item->image }}" alt="image"
                                          class="size-50">
                                    </div>
                                    <div class="ml-10">
                                        <div class="text-14 lh-11 mt-5">{{ $item->title }}</div>
                                    </div>

                                </div>
                            </a>

                        </div>
                        @endforeach




                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-8">
            @if($course)
            <div class="rounded-16 bg-white -dark-bg-dark-1 shadow-4 h-100">
                <div class="d-flex items-center justify-between py-20 px-30 border-bottom-light">
                    <div class="d-flex items-center">
                        <div class="shrink-0">
                            <img src="{{ asset('') }}uploads/courses/{{ $course->image }}" alt="image" class="size-50">
                        </div>
                        <div class="ml-10">
                            <div class="lh-11 fw-500 text-dark-1">{{$course->title }}</div>

                        </div>
                    </div>

                </div>

                <div class="py-40 px-40">
                    @if($chats)
                    <div class="row y-gap-20">

                        @foreach($chats as $chat)
                        @if($chat->sender_role == 1)
                        <div class="col-xl-7 col-lg-10">
                            <div class="d-flex items-center">
                                <div class="shrink-0">
                                    @php

                                    // dd($chat);

                                    $studentInfo = App\Models\User::find($chat->sender_id);

                                    @endphp
                                    <img src="{{ asset('uploads/students/' . ($studentInfo->student->image ?? 'default_image.jpg')) }}"
                                    alt="" class="size-50">

                                </div>
                                @if($studentInfo)
                                <div class="lh-11 fw-500 text-dark-1 ml-10">{{ $studentInfo->name }}</div>
                            @else
                                <!-- Handle the case where $studentInfo is null -->
                                <div>Deleted User</div>
                            @endif

                                <div class="text-14 lh-11 ml-10">{{ $chat->created_at->format('d M h:i:a') }}</div>
                            </div>
                            <div class="d-block mt-15">
                                <div class="py-20 px-30 bg-light-3 rounded-8">
                                    {{ $chat->text }}
                                </div>
                            </div>
                        </div>
                        @elseif($chat->sender_role == 0)
                        <div class="col-xl-7 col-lg-10">
                            <div class="d-flex items-center bg-dark-1">

                                <div class="lh-11 fw-500 text-white-1 ml-10">Moderator</div>
                                <div class="text-14 lh-11 ml-10 text-white-1">
                                    {{ $chat->created_at->format('d M h:i:a') }}
                                </div>
                            </div>
                            <div class="d-block mt-15">
                                <div class="py-20 px-30 bg-light-3 rounded-8 text-white-1">
                                    {{ $chat->text }}
                                </div>
                            </div>
                        </div>
                        @else
                        <div class="col-xl-7 offset-xl-5 col-lg-10 offset-lg-2">
                            <div class="d-flex items-center justify-end">
                                <div class="text-14 lh-11 mr-10">{{ $chat->created_at->format('d M h:i:a') }}</div>
                                <div class="lh-11 fw-500 text-dark-1 mr-10">You</div>
                                <div class="shrink-0">
                                    <img src="{{ asset('uploads/teachers/'.Auth::user()->teacher->image) }}" alt="image"
                                      class="size-50">
                                </div>
                            </div>
                            <div class="d-block mt-15">
                                <div class="py-20 px-30 bg-light-7 -dark-bg-dark-2 text-purple-1 rounded-8 text-right">
                                    {{ $chat->text }}
                                </div>
                            </div>
                        </div>
                        @endif

                        @endforeach




                    </div>
                    @endif
                </div>

                <div class="py-25 px-40 border-top-light">
                    <div class="row y-gap-10 justify-between">
                        <form action="{{ route('chat.save') }}" method="POST">
                            @csrf
                            <input type="hidden" name="course_id" value="{{ $course->id }}">
                            <input type="hidden" name="sender_id" value="{{ Auth::user()->id }}">
                            <input type="hidden" name="sender_role" value="{{ Auth::user()->role }}">
                            <div class="col-lg-7">
                                <input class="-dark-bg-dark-1 py-20 w-1/1" type="text" name="text"
                                  placeholder="Type a Message">
                            </div>
                            <div class="col-auto">
                                <button type="submit" class="button -md -purple-1 text-white shrink-0">Send
                                    Message</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            @endif

        </div>
    </div>

</div>
@endsection
