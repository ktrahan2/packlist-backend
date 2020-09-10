class SelectedGearsController < ApplicationController
    def index
        @selected_gears = SelectedGear.all
        render json: @selected_gears
    end

    def show
        @selected_gear = SelectedGear.find(params[:id])
        render json: @selected_gear
    end

    def create
        @selected_gear = SelectedGear.create(
            pack_id: params[:pack_id],
            gear_id: params[:gear_id]
        )
        redirect_to 'http://localhost:3001/profile.html?user_id=#{params[:user_id]}'
    end

    def destroy
        @selected_gear = SelectedGear.find(params[:id])
        @selected_gear.destroy

        redirect_to 'http://localhost:3001/profile.html?user_id=#{params[:user_id]}'
    end
end
