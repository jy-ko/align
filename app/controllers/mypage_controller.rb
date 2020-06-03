class MypageController < ApplicationController
  def index
    @my_workshops = []
    @workshops = policy_scope(Workshop)
    @workshops.each do |workshop| 
      if workshop.booked?(current_user, workshop.id)
        @my_workshops << workshop 
      end
    end 
  end
end
