<?php


namespace App\Services;


use App\Models\Seat;
use App\Models\Station;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;

class SeatsService
{
    public function listAvailableSeats($seatInfo)
    {
        $trips = Station::trips($seatInfo)->with('bus.seats')->get();
        $availableSeats = new Collection;
        foreach ($trips as $trip) {
            $notAvailableSeats = $trip->notAvailableSeats($seatInfo)->get();
            $validSeats = $trip->bus->seats->diff($notAvailableSeats);
            if ($validSeats->count())
                $availableSeats->push($validSeats);
        }
        return $availableSeats;
    }

    public function bookSeat($seatInfo)
    {
        Auth::user()->seats()->attach($seatInfo->seat_id, [
            'from_station' => $seatInfo->from,
            'to_station' => $seatInfo->to,
            'trip_id' => Seat::query()->find($seatInfo->seat_id)->bus->trip->id,
        ]);
    }
}
