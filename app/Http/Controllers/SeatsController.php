<?php

namespace App\Http\Controllers;

use App\Rules\CheckSeatAvailability;
use App\Services\SeatsService;
use Illuminate\Http\Request;

class SeatsController extends Controller
{
    private $seatsService;

    public function __construct(SeatsService $seatsService)
    {
        $this->seatsService = $seatsService;
    }

    public function listAvailableSeats(Request $request)
    {
        $seatInfo = (object)$request->all();
        $availableSeats = $this->seatsService->listAvailableSeats($seatInfo);
        return response()->json($availableSeats);
    }

    public function bookSeat(Request $request)
    {
        $seatInfo = (object)$request->all();
        $this->validate(request(), [
            'seat_id' => [new CheckSeatAvailability($this->seatsService, $seatInfo)]
        ]);
        $this->seatsService->bookSeat($seatInfo);
        return response()->json(['msg' => 'Done']);
    }
}
