class HomeController < ApplicationController
  

    def index
  if params[:search]
    @players = Player.search(params[:search])
  else
    @players = Player.all
  end
end
   
   





end
