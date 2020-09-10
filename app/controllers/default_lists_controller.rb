class DefaultListsController < ApplicationController
    def index
        @lists = DefaultList.all
        render json: @lists
    end

    def show
        @list = DefaultList.find(params[:id])
        render json: @list
    end

end
