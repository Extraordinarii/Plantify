class OwnersController < ApplicationController
    def index
    end
    
    def new
        @owner = Owner.new
    end

    def create
        @owner = Owner.create(params[:name])
        redirect_to owner_path(@owner)
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
