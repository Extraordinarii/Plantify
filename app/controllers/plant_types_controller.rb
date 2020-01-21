class PlantTypesController < ApplicationController

    require 'open-uri'
    require 'nokogiri'


    url = 'https://www.thesill.com/'
    html = open(url)

    def index 
        @plant_types = PlantType.all
    end 

    def show
        @plant_type = PlantType.find(params[:id])
    end

end
