Rails.application.routes.draw do

  post 'home/create' => 'home#create'
  get 'home/index'

  get "home/search"



resources :teams,:except=>[:index]


get "teams/:team_id/players/:player_id", :to =>  "players#show"

resources :players

 root to: 'home#index'
 
end


