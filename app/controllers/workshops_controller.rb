class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy ]
  def index
    @workshops = Workshop.all
  end

  def show
  end

  def new
    @workshop = Workshop.new
    @centres = Centre.all
    @instructors = Instructor.all
  end

  def create
    @workshop = Workshop.create(workshop_params)
    if @workshop.save
      redirect_to workshop_path(@workshop)
    else
      render 'new'
    end
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
      params.require(:workshop).permit(:title, :date, :capacity, :centre_id, :instructor_id)
  end
end
