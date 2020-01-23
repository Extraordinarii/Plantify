class PlantTypesController < ApplicationController

    def index 
        @plant_types = PlantType.all
        if params[:search]
            @plant_types = PlantType.search(params[:search]).order("created_at DESC")
        else
            @plant_types = PlantType.all.order('created_at DESC')
        end
    end 

    def show
        @plant_type = PlantType.find(params[:id])
    end

end
