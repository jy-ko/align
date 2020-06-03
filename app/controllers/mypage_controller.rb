class MypageController < ApplicationController
  def index
    @workshops = policy_scope(Workshop)
  end
end
