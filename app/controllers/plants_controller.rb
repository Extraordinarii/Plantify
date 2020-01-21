class PlantsController < ApplicationController
    def index 
        @plants = Plant.all
    end 
    def landing_page
    end 

    def new
        @plant = Plant.new
        @owners = Owner.all
        @plant_types = PlantType.all
    end

    def show
        @plant = Plant.find(params[:id])
        render :show
    end

    def create
        @plant = Plant.create(plant_params)
        redirect_to plant_path(@plant)
    end

    def edit
        @plant = Plant.find(params[:id])
    end

    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy 
        redirect_to plants_path
    end

    def search
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :owner_id, :plant_type_id)
    end

    
end
