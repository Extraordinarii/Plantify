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
        @plant = Plant.new(plant_params)
        @plant.save
        redirect_to owner_path(@plant.owner.id)
    # else
    #     flash[:error] = @plant.errors.full_messages
    #     byebug
    #     redirect_to new_plant_path
        # end
    end

    def edit
        @plant = Plant.find(params[:id])
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
