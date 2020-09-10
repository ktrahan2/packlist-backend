class UserPacksController < ApplicationController
    def index
        @packs = UserPack.all
        render json: @packs
    end

    def show
        @pack = UserPack.find(params[:id])
        render json: @pack
    end

    def create
        @pack = UserPack.create(
            user_id: params[:user_id],
            gear_id: params[:gear_id],
            list_name: params[:list_name]
        )

        render json: @pack
    end

    def delete
        @pack = UserPack.find(params[:id])
        @pack.destroy

        render json: {message: "Item removed from your pack list!"}
    end
end
