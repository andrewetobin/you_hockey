class FantasyDataService


  def rankings
    JSON.parse(response.body, symbolize_names: true)
  end

  def response
    conn.get("v3/nhl/scores/json/Standings/2019")
  end

  def conn
    Faraday.new(url: "https://api.fantasydata.net/") do |faraday|
      faraday.headers["Ocp-Apim-Subscription-Key"] = ENV['api_key']

      faraday.adapter  Faraday.default_adapter
    end
  end

end
