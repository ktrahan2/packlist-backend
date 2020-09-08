class ActivitiesController < ApplicationController
    
    def show 
        @activity = Activity.find(params[:id])
        render json: @activity, include: [:packing_lists, :gears]
    end
        
    def index
        @activities = Activity.all
        render json: @activities, include: [:packing_lists, :gears]
    end 
end
