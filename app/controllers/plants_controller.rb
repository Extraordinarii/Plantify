class PlantsController < ApplicationController
    def index 
        @plants = Plant.find(params[:id])
    end 
    
    def landing_page
    end 

    def new
        @plant = Plant.new
        @owner = Owner.all
        @plant_types = PlantType.all
    end

    def show
        @plant = Plant.find(params[:id])
        #redirect_to plant_path(@plant)
    end

    def create
        
        @plant = Plant.create(plant_params)
        redirect_to plant_path(@plant)
    end

    def edit
        @plant = Plant.find(params[:id])
        @plant_types = PlantType.all
        @owners = Owner.all
    end

    def update
        @plant = Plant.find(params[:id])
        @plant.update(plant_params)

        redirect_to owner_path(@plant.owner.id)
    end

    def destroy
        @plant = Plant.find(params[:id])
        @plant.destroy 
        redirect_to owner_path(@plant.owner)
    end

    def search
    end

    private

    def plant_params
        params.require(:plant).permit(:name, :bio, :img_url, :owner_id, :plant_type_id)
    end

    
end
