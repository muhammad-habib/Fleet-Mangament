<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class CheckSeatAvailability implements Rule
{
    private $seatsService;
    private $seatInfo;

    public function __construct($seatsService, $seatInfo)
    {
        $this->seatsService = $seatsService;
        $this->seatInfo = $seatInfo;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $seatInfo)
    {
        $availableSeats = $this->seatsService->listAvailableSeats($this->seatInfo);
        foreach ($availableSeats as $collection) {
            if ($collection->contains('id', $this->seatInfo->seat_id))
                return true;
        }
        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The seat is already booked';
    }
}
