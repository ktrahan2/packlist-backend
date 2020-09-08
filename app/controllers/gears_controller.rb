class GearsController < ApplicationController
  
    def show 
        @gear = Gear.find(params[:id])
        render json: @gear, include: [:packing_lists, :activities]
    end
        
    def index
        @gears = Gear.all
        render json: @gears, include: [:packing_lists, :activities]
    end 

    def create
        @gear = Gear.create(
            name: params[:name],
            image: params[:image],
            url: params[:url],
            weight: params[:weight]
        )
        render json: @gear
    end

    def update
        @gear = Gear.find(params[:id])

        @gear.update(
            name: params[:name],
            image: params[:image],
            url: params[:url],
            weight: params[:weight]
        )
        render json: @gear
    end

end
