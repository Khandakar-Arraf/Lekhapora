@extends('web.app.app')


@section('main-body')

<section class="layout-pt-md layout-pb-lg">
    <div data-anim-wrap class="container">
        <div class="row justify-center text-center">
            <div class="col-auto">

                <div class="sectionTitle ">

                    <h2 class="sectionTitle__title ">Related Courses</h2>


                </div>

            </div>
        </div>
        @if ($courses)
        @if($courses->count() > 0)
        @include('web.component.courses')
        @else
        <div class="d-flex items-center justify-between bg-info-1 pl-30 pr-20 py-30 rounded-8">
            <div class="text-info-2 lh-1 fw-500">No Search Related courses</div>

        </div>
        @endif
        @else
        <div class="d-flex items-center justify-between bg-info-1 pl-30 pr-20 py-30 rounded-8">
            <div class="text-info-2 lh-1 fw-500">No Search Related courses</div>

        </div>
        @endif

    </div>

</section>
@if($teachers)
<section class="layout-pt-md layout-pb-lg">
    <div data-anim-wrap class="container">
        <div class="row justify-center text-center">
            <div class="col-auto">

                <div class="sectionTitle ">

                    <h2 class="sectionTitle__title ">Related TEachers</h2>


                </div>

            </div>
        </div>

        @if($teachers->count() > 0)
        <div class="row y-gap-30">
            @foreach ($teachers as $teacher)
            <div class="col-lg-3 col-md-6">
                <div data-anim-child="slide-left delay-2" class="teamCard -type-1 is-in-view">
                    <div class="teamCard__image"><a href="{{ route('teacher.details',$teacher->id) }}">
                            <img src="{{ asset('uploads/teachers') }}/{{ $teacher->teacher->image }}" alt="image">
                        </a>
                    </div>
                    <div class="teamCard__content">
                        <h4 class="teamCard__title">{{ $teacher->name }}</h4>
                        <p class="teamCard__text">{{ $teacher->teacher->subjects->title }}</p>
                        <div class="d-flex x-gap-10 pt-10">
                            <div class="d-flex items-center">
                                <div class="icon-play text-14"></div>
                                <div class="text-13 lh-1 ml-8">{{ $teacher->teacher->courses->count() }} Course
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            @endforeach


        </div>
        @else
        <div class="d-flex items-center justify-between bg-info-1 pl-30 pr-20 py-30 rounded-8">
            <div class="text-info-2 lh-1 fw-500">No Search Related products</div>

        </div>
        @endif




    </div>

</section>
@endif
@if($products)
<section class="layout-pt-md layout-pb-lg">
    <div data-anim-wrap class="container">
        <div class="row justify-center text-center">
            <div class="col-auto">

                <div class="sectionTitle ">

                    <h2 class="sectionTitle__title ">Related Products</h2>


                </div>

            </div>
        </div>

        @if($products->count() > 0)
        @include('web.component.product')
        @else
        <div class="d-flex items-center justify-between bg-info-1 pl-30 pr-20 py-30 rounded-8">
            <div class="text-info-2 lh-1 fw-500">No Search Related products</div>

        </div>
        @endif




    </div>

</section>
@endif
@endsection