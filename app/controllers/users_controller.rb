class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        render json: @user, include: [:user_packs, :gears]
    end

    def create
        @user = User.new(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )
        if @user.valid?
            @user.save
            redirect_to "http://localhost:3001/profile.html?user_id=#{@user.id}"
        else
            redirect_to "http://localhost:3001/login.html"
        end
    end

    def login
        @user = User.find_by(
            username: params[:username],
            password: params[:password]
        )
        if @user
            redirect_to "http://localhost:3001/profile.html?user_id=#{@user.id}"
        else
            redirect_to "http://localhost:3001/login.html"
        end
    end
end
