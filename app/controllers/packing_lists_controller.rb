class PackingListsController < ApplicationController
   
    def show 
        @packing_list = PackingList.find(params[:id])
        render json: @packing_list
    end
    
    def index 
        @packing_lists = PackingList.all
        render json: @packing_lists
    end
    
    def delete 
        @packing_list = PackingList.find(params[:id])
        @packing_list.destroy

        render json: "#{packing_list} has been removed"
    end

    def create
        @packing_list = PackingList.create(
            activity_id = params[:activity_id],
            gear_id = params[:gear_id]
        )

        render json: @packing_list
    end

end
        
