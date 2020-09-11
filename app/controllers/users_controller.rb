class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.new(
            name: params[:name],
            username: params[:username],
            password: params[:password]
        )

        if @user.valid?
            @user.save
            redirect_to "http://localhost:3001/home.html?user_id=#{@user.id}"
        else
            redirect_to 'http://localhost:3001'
        end
    end

    def update
        @user = User.find(params[:id])

        @user.update(
            password: params[:password]
        )
       
        redirect_to "http://localhost:3001/profile.html?user_id=#{@user.id}"
    end

    def login
        @user = User.find_by(
            username: params[:username],
            password: params[:password]
        )
    
        if @user
            redirect_to "http://localhost:3001/home.html?user_id=#{@user.id}"
        else
            redirect_to 'http://localhost:3001'
        end
    end

    def profile
        @user = User.find(params[:user_id])

        redirect_to "http://localhost:3001/profile.html?user_id=#{@user.id}"
    end

    def home
        @user = User.find(params[:user_id])

        redirect_to "http://localhost:3001/home.html?user_id=#{@user.id}"
    end

end
