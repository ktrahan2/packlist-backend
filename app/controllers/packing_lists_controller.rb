class PackingListsController < ApplicationController
   
    def show 
        @packing_list = PackingList.find(params[:id])
        render json: @packing_list, include: [:activity, :gear]
    end
    
    def index 
        @packing_lists = PackingList.all
        render json: @packing_lists, include: [:activity, :gear]
    end
    
    def destroy
        @packing_list = PackingList.find(params[:id])
        @packing_list.destroy

        render json: "#{@packing_list} has been removed"
    end

    def create
        @packing_list = PackingList.create(
            activity_id: params[:activity_id],
            gear_id: params[:gear_id]
        )

        render json: @packing_list
    end

end
        
