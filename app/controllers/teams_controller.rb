class TeamsController < ApplicationController


  def show

    @team = Team.find(params[:id])
    add_breadcrumb @team.team_name, team_path(@team.id)
    @players = @team.players
  end

  
end
