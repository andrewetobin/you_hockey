class GamesController < ApplicationController

  def index
    @games_facade = GamesFacade.new
    @games = @games_facade.results
    @teams = @games_facade.teams
  end

end
