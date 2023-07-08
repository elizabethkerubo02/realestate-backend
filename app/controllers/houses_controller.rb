class HousesController < ApplicationController
    
    #GET/houses
    def index 
      houses = House.all
      render json: houses, status: :ok
    end

    #GET/houses/:id
    def show
      house = House.find(params[:id])
      if house
        render json: house
      else 
        render json: { error: "House not found" }, status: :not_found
    end
end
end
