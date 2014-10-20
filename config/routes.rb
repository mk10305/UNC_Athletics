Rails.application.routes.draw do

  post 'home/create' => 'home#create'
  post '/create', :to=> "home#create"
  get 'home/index'

  get "home/search"



resources :teams,:except=>[:index] do
  resources :players
end



resources :players

 root to: 'home#index'
 
end


