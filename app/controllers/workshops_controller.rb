class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:edit, :update, :destroy]

  def index
    if params[:query].present?
      @workshops = policy_scope(Workshop).search_by_workshop(params[:query])
    else
      @workshops = policy_scope(Workshop)
    end
  end

  def show
    @workshop = policy_scope(Workshop).find(params[:id])
    @current_user = current_user
  end

  def new
    @workshop = current_user.workshops.new
    authorize @workshop
  end

  def create
    @workshop = current_user.workshops.create(workshop_params)
    authorize @workshop
    if @workshop.save
      redirect_to workshop_path(@workshop), notice: 'Workshop was successfully created.'
    else
      render 'new'
    end
  end

  def update
    if @workshop.update(workshop_params)  
      redirect_to @workshop, notice: 'Workshop was successfully updated.'
    else	 
      render :edit	    
    end	   
  end

  def edit
  end

  def destroy
    @workshop.destroy
    redirect_to workshops_path, notice: 'Workshop was successfully destroyed.'
  end

  private

  def set_workshop
      @workshop = Workshop.find(params[:id])
      authorize @workshop
  end

  def workshop_params
      params.require(:workshop).permit(:title, :date, :capacity, :centre_id, :instructor_id)
  end
end
