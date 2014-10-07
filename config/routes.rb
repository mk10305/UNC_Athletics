Rails.application.routes.draw do

  get 'home/index'

resources :teams,:except=>[:index]


get "teams/:team_id/players/:player_id", :to =>  "players#show"



resources :players

 root to: 'home#index'
 
end


