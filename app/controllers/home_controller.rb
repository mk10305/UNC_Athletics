class HomeController < ApplicationController

before_action :set_parameters
  

def index

end
   

  def search
      @players = Player.where("player_name like '%#{params[:search]}%' or player_hometown like '%#{params[:search]}%'")
      
  end

  def create
    @newsletter = Newsletter.new(get_params)
    @newsletter.save
    redirect_to root_url
   
  end


  private
  def get_params
    params.require(:newsletter).permit(:name, :email)
  end

  def set_parameters
    @newsletter = Newsletter.new
  end




end
