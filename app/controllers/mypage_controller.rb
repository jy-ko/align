class MypageController < ApplicationController
  def index
    @my_bookings = []
    @workshops = policy_scope(Workshop)
    @workshops.each do |workshop| 
      if workshop.booked?(current_user, workshop.id)
        @my_bookings << workshop 
      end
    end 
    @my_workshops = policy_scope(Workshop).where(user_id: current_user.id)
  end
end
