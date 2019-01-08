class GamesFacade

  def teams
    { "STL" => "St. Louis Blues",
    "PHI" => "Philadelphia Flyers",
    "NAS" => "Nashville Predators",
    "TOR" => "Toronto Maple Leafs",
    "MIN" => "Minnesota Wild",
    "MON" => "Montreal Canadiens",
    "CGY" => "Calgary Flames",
    "CHI" => "Chicago Blackhawks",
    "LA" => "Los Angeles Kings",
    "SJ" => "San Jose Sharks",
    "BOS" => "Boston Bruins",
    "NJ" => "New Jersey Devils",
    "BUF" => "Buffalo Sabres",
    "CAR" => "Carolina Hurricanes",
    "NYI" => "New York Islanders",
    "FLA" => "Florida Panthers",
    "PIT" => "Pittsburg Penguins",
    "DET" => "Detriot Red Wings",
    "CBJ" => "Columbus Blue Jackets",
    "TB" => "Tampa Bay Lightning",
    "DAL" => "Dallas Stars",
    "COL" => "Colorado Avalanche",
    "WPG" => "Winnepeg Jets",
    "NYR" => "New York Rangers",
    "VEG" => "Vegas Golden Knights",
    "EDM" => "Edmonton Oilers",
    "OTT" => "Ottawa Senators",
    "ANA" => "Anaheim Mighty Ducks",
    "WAS" => "Washington Capitals",
    "ARI" => "Arizona Coyotes",
    "VAN" => "Vancouver Canucks"
   }
  end

  def results
    service.games
  end

  def service
    FantasyDataService.new
  end
end
