class StandingsController < ApplicationController

  def index
    @standings_facade = StandingsFacade.new
    @results = @standings_facade.results
  end

end
