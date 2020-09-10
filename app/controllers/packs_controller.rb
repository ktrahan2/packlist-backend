class PacksController < ApplicationController
    def index
        @packs = Pack.all
        render json: @packs
    end

    def show
        @pack = Pack.find(params[:id])
        render json: @pack
    end

    def create
        @pack = Pack.create(
            user_id: params[:user_id],
            name: params[:name]
        )

        params[:gear_ids].each do |gear_id|
            SelectedGear.create(
                pack_id: @pack.id,
                gear_id: gear_id
            )
        end
        redirect_to "http://localhost:3001/profile.html?user_id=#{@pack.user_id}"
    end

    def update
        @pack = Pack.find(params[:id])

        @pack.update({
            name: params[:name]
        })

        redirect_to "http://localhost:3001/profile.html?user_id=#{@pack.user_id}"
    end

    def destroy
        @pack = Pack.find(params[:id])
        @pack.destroy

        redirect_to 'http://localhost:3001/profile.html?user_id=#{@pack.user_id}'
    end

end
