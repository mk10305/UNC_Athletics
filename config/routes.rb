Rails.application.routes.draw do

  get 'home/index'

 resources :teams, only: [:show]
 resources :players, only: [:show]
 root to: 'home#index'
 
end


