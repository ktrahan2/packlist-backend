class GearsController < ApplicationController
    def index
        @gears = Gear.all
        render json: @gears, include: [:default_lists, :activities]
    end 

    def show 
        @gear = Gear.find(params[:id])
        render json: @gear, include: [:default_lists, :activities]
    end
        
    def create
        @gear = Gear.create(
            name: params[:name],
            description: params[:description],
            image: params[:image],
            url: params[:url],
            weight: params[:weight],
            category: params[:category]
        )
        render json: @gear
    end

    def update
        @gear = Gear.find(params[:id])

        @gear.update(
            name: params[:name],
            description: params[:description],
            image: params[:image],
            url: params[:url],
            weight: params[:weight],
            category: params[:category]
        )
        render json: @gear
    end

end
