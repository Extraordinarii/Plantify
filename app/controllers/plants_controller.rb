class PlantsController < ApplicationController
    def water_plant
        @plant = Plant.find(params[:id])
        @plant.waterings << Watering.new(plant: @plant, date: Time.now, amount: "💦💦")
        redirect_to owner_path(@plant.owner_id)
    end

    def planty 
        @plant = Plant.new
        @plant.plant_type = PlantType.find(params[:plant_type_id])
        @owner = Owner.all
        @plant_types = PlantType.all
        render 'new'
    end 
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
        @plant = Plant.new(plant_params)
        @plant.owner_id = session[:owner_id]
        @plant.save
        redirect_to owner_path(session[:owner_id])
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
