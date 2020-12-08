Rails.application.routes.draw do
  resources :line_items do 
  
  end
  resources :orders

  devise_for :users
  resources :movies 
   root to: "movies#index"

  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end