class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:id])
    #@team = Team.find(params[:team_id])
     @team = @player.team
      add_breadcrumb @team.team_name, team_path(@team.id)
      add_breadcrumb @player.player_name, player_path(@player.id)
    @bio = @player.bio
  end
end
