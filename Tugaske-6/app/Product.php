<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    public function comments()
{
    return $this->hasMany(Comment::class);
}

public function user()
{
    return $this->belongsTo(User::class);
}
}
