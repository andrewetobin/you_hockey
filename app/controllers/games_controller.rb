class GamesController < ApplicationController

  def index
    @games_facade = GamesFacade.new
  end

end
