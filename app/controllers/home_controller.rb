class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @workshops = Workshop.all
  end
end
