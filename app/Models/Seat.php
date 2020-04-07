<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{
    public function users()
    {
        return $this->belongsToMany(User::class, 'users_trips', 'seat_id', 'user_id');
    }

    public function bus()
    {
        return $this->belongsTo(Bus::class)->with('trip');
    }
}
