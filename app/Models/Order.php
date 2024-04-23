<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id', 'item_id', 'type', 'status', 'phone', 'payment_type', 'price','quantity_ordered',
        'transaction_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function course()
    {
        return $this->belongsTo(Course::class, 'item_id');
    }
    public function item()
    {
        return $this->morphTo();
    }

    public function product(){
        return $this->belongsTo(Product::class,'item_id');
    }
}
