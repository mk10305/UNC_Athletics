class HomeController < ApplicationController

  

def index

end
   

  def search

    respond_to do |format|
format.js{ 
  @players = Player.where("lower(#{params[:player_fields]}) like lower('%#{params[:name]}%') ")
}
      
      
  end
end

  def create
    @newsletter = Newsletter.new(get_params)
    respond_to do |format|
    if @newsletter.save
      format.html{
      flash[:notice]= "Thanks! You are now registered to the GoHeels.com E-Newsletter!"
      redirect_to root_url
    }
    else 
    format.html{
       flash.now[:error]="Uh-Oh! There was an error in signing you up for the GoHeels.com E-Newsletter"     
       render :index
     }
  end
end



  end


  private
  def get_params
    params.require(:newsletter).permit(:name, :email)
  end

  




end
