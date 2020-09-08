Rails.application.routes.draw do
  resources :packing_lists
  resources :gears
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
