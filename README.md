# Gear Up

An app for finding recommended packing list for outdoor adventures!

# Table Of Contents 
- [Description]()
- [Gifs]()
- [Example Code]()
- [Technology Used]()
- [Setting up for the Application]()
- [Main Features]()
- [Features in Progress]()
- [Contact Information]()

## Description

Gear up is a web application that allows the user to register and then browse through different outdoor activities. While browsing these activites the user is able to select and modify a recommended packing list for the specific activity they are doing. After selecting a packing list the user can go to their profile page and see their saved list and make changes to their saved packs. 

## Gifs/video

## Example Code 

```
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
```
```
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
```    
```
    class Gear < ApplicationRecord
        has_many :default_lists
        has_many :activities, through: :default_lists
        has_many :selected_gear
        has_many :packs, through: :selected_gear
    end
```

## Technology Used

- Ruby on Rails
- Sqlite3 

## Setting up for the application

First you must run

    ``` bundle install ```

Then

    ``` rails db:migrate ```
    ``` rails db:seed ```

To start the server run

    ``` rails s -p 3500 ```

## Main Features

- User can register/sign in
- User can find a recommended packing list for an outdoor activity
- User can save this packing list to their profile then later view, update and delete that packing list. 

## Features in Progress

- Allowing users to add individual items to saved packing list. 

## Contact Information

Created by [Shelley Brooke](https://www.linkedin.com/in/sbrook13/) and [Kyle Trahan](https://www.linkedin.com/in/kyle-trahan-8384678b/)
