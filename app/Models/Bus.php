<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    public function seats()
    {
        return $this->hasMany(Seat::class);
    }

    public function trip()
    {
        return $this->hasOne(Trip::class);
    }
}
