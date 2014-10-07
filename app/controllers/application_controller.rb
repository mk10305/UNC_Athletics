class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_all_teams

  private
  def get_all_teams
     add_breadcrumb "Home", :root_path
    @teams = Team.all.sort do |a,b|
     a.team_name<=>b.team_name

    end

  end


  
end
