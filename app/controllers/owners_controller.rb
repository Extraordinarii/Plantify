class OwnersController < ApplicationController
    def index
    end
    
    def new
        @owner = Owner.new
        @plants = Plant.all
        @plant_types = PlantType.all
    end

    def show
        @owner = Owner.find(params[:id])
        @plants = @owner.plants
    end

    def current_user    
        Owner.find_by(id: session[:owner_id])  
    end

    def logged_in?
       
        !current_user.nil?  
    end

    def create
        @owner = Owner.create(params.require(:owner).permit(:username,        
        :password, :name))
        session[:owner_id] = @owner.id
        redirect_to '/welcome'
     end

    def edit
        @owner = Owner.find(params[:id])
    end

    def destroy
        @owner = Owner.find(params[:id])
        @owner.destroy
        redirect_to plants_path

    end

    
end
