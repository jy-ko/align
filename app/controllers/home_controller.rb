class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  skip_after_action :verify_policy_scoped, :only => :index
  def index
    @workshops = Workshop.all
  end
end
