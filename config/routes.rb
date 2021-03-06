Rails.application.routes.draw do
  resources :selected_gears
  resources :packs
  resources :users
  resources :default_lists
  resources :gears
  resources :activities
  post '/login', to: 'users#login'
  post '/profile', to: 'users#profile'
  post '/home', to: 'users#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
