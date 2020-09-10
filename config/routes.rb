Rails.application.routes.draw do
  resources :user_packs
  resources :users
  resources :packing_lists
  resources :gears
  resources :activities
  post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
