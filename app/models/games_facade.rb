class GamesFacade


  def results
    service.games
  end

  def service
    FantasyDataService.new
  end
end
