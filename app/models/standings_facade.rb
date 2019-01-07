class StandingsFacade
  attr_reader :results

  def initialize
  end



  def results
    service.rankings
  end

  def service
    FantasyDataService.new
  end
end
