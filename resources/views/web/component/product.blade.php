<div class="row y-gap-30 pt-30">
    @foreach ($products as $product)
    <div class="col-lg-4 col-sm-6">
        <div class="productCard -type-1 text-center">
            <div class="productCard__image">
                <img src="{{ asset('/') }}uploads/products/{{ $product->image }}" alt="Product image">

            </div>

            <div class="productCard__content mt-20">

                <h4 class="text-17 fw-500 mt-15">{{ $product->name }}</h4>
                <div class="text-17 fw-500 text-purple-1 mt-15">${{ $product->price }}</div>
                @if($product->quantity==1)
                <div class="text-17 fw-500 text-purple-1 mt-15">{{ $product->quantity }} pc</div>
                @elseif($product->quantity>1)
                <div class="text-17 fw-500 text-purple-1 mt-15">{{ $product->quantity }} pcs</div>
                @else
                <div class="text-17 fw-500 text-red-1 mt-15">Out of Stock</div>
                @endif

                <div class="productCard__button d-inline-block">
                   @if($product->quantity == 0)
                   
                   @else
                   <a href="{{ route('product.details',$product->id) }}"
                    class="button -md -outline-purple-1 text-dark-1 mt-15">Details</a>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endforeach



</div>