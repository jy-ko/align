class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy ]
  def index
    @workshops = Workshop.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_workshop
      @workshop = Workshop.find(params[:id])
  end

  def workshop_params
      params.require(:workshop).permit(:title)
  end
end
