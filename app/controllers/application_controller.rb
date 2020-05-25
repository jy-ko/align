class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    include Pundit
    # Pundit: white-list approach.
    after_action :verify_authorized, :except => [:index, :show], unless: :devise_controller?
    after_action :verify_policy_scoped, :only => [:index, :show], unless: :devise_controller?

    #Uncomment when you *really understand* Pundit!
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to(root_path)
    end

end
