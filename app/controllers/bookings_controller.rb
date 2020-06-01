class BookingsController < ApplicationController

    def create
        @booking = Booking.new(booking_params)
        if @booking.status == true
            #make it unclickable
        else
            @booking.status = true
            #redirect to stripe link
            notice: 'Your have successfully booked this workshop'
            redirect_to mypage_index_path
        end          

    end

end
