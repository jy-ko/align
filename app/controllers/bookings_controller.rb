class BookingsController < ApplicationController
    def create
        @booking = Booking.create(booking_params)
        @workshop = Workshop.find(params[:format])
        @booking.workshop_id = @workshop.id
        @booking.user_id = current_user.id
        if @boooking.save
            redirect_to workshop_path(@booking.workshop_id)
        end      
    end

    private

    def booking_params
        params.require(:booking).permit(:workshop_id, :user_id)
    end

end
