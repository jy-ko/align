class CentresController < ApplicationController
    before_action :set_centre, only: [:show, :edit, :update, :destroy ]
    def index
        @centres = Centre.all
    end

    def show
    end

    def new
        @centre = Centre.new 
    end

    def create
        @centre = Centre.new(centre_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_centre
        @centre = Centre.find(params[:id])
    end

    def centre_params
        params.require(:centre).permit(:name, :location)
    end
end
