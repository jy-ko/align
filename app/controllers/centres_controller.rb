class CentresController < ApplicationController
    before_action :set_centre, only: [:edit, :update, :destroy ]
    
    def index
        @centres = policy_scope(Centre)
    end

    def show
        @centre = policy_scope(Centre).find(params[:id])
    end

    def new
        @centre = current_user.centres.new
        authorize @centre
    end

    def create
        @centre = current_user.centres.create(centre_params)
        authorize @centre
        if @centre.save
            redirect_to centre_path(@centre), notice: "Centre was successfully created."
        else 
            render 'new'
        end
    end

    def edit
    end

    def update
        if @centre.update(centre_params)
            redirect_to @centre, notice: "Centre was successfully updated."
        else
            render :edit
        end
    end

    def destroy
        @centre.destroy
        redirect_to centres_path, notice: "Centre was successfully destroyed"
    end

    private

    def set_centre
        @centre = Centre.find(params[:id])
        authorize @centre
    end

    def centre_params
        params.require(:centre).permit(:name, :location)
    end
end
