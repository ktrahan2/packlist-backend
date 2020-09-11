# Gear Up

An app for finding recommended packing list for outdoor adventures!

# Table Of Contents 
- [Description](https://github.com/ktrahan2/packlist-backend#description)
- [Gifs](https://github.com/ktrahan2/packlist-backend#gifsvideo)
- [Example Code](https://github.com/ktrahan2/packlist-backend#example-code)
- [Technology Used](https://github.com/ktrahan2/packlist-backend#technology-used)
- [Setting up for the Application](https://github.com/ktrahan2/packlist-backend#setting-up-for-the-application)
- [Main Features](https://github.com/ktrahan2/packlist-backend#main-features)
- [Features in Progress](https://github.com/ktrahan2/packlist-backend#features-in-progress)
- [Contact Information](https://github.com/ktrahan2/packlist-backend#contact-information)
- [Link to Frontend Repo](https://github.com/ktrahan2/packlist-backend#link-to-frontend-repo)

## Description

Gear up is a web application that allows the user to register and then browse through different outdoor activities. While browsing these activites the user is able to select and modify a recommended packing list for the specific activity they are doing. After selecting a packing list the user can go to their profile page and see their saved list and make changes to their saved packs. 

## Gifs
![Seeds](https://media.giphy.com/media/J1QcLazM3SIb7CgZbG/giphy.gif)
![Schema](https://media.giphy.com/media/IhDIM46ARwOR08dfPi/giphy.gif)
[Button](./Create.jpg)


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

``` 
     bundle install 
```

Then

``` 
     rails db:migrate 
```
``` 
     rails db:seed 
 ```

To start the server run

```
    rails s -p 3500 
```

## Main Features

- User can register/sign in
- User can find a recommended packing list for an outdoor activity
- User can save this packing list to their profile then later view, update and delete that packing list. 

## Features in Progress

- Allowing users to add individual items to saved packing list. 

## Contact Information

Created by [Shelley Brooke](https://www.linkedin.com/in/sbrook13/) and [Kyle Trahan](https://www.linkedin.com/in/kyle-trahan-8384678b/)

## Link to Frontend Repo

https://github.com/sbrook13/packlist-frontend

