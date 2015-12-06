require 'net/http'
source = 'https://raw.githubusercontent.com/jokecamp/FootballData/master/EPL%201992%20-%202015/2015-results.json'
resp = Net::HTTP.get_response(URI.parse(source))
data = resp.body
results = JSON.parse(data)

results.each do |result|
  home_team = Team.find_or_create_by(name: result["home"])
  away_team = Team.find_or_create_by(name: result["away"])

  result["homeEvents"].each do |home_event|
    player = home_team.players.find_or_create_by(name: home_event["name"])

    home_event["count"].to_i.times do |event_occurrence|
      event = player.events.create({
        event_type: home_event["type"],
        date:       result["date"],
        location:   "home",
        score:      result["score"],
        home_team:  home_team.id,
        away_team:  away_team.id
      })
      home_team.events.push(event)
    end
  end

  result["awayEvents"].each do |away_event|
    player = away_team.players.find_or_create_by(name: away_event["name"])

    away_event["count"].to_i.times do |event_occurrence|
      event = player.events.create({
        event_type: away_event["type"],
        date:       result["date"],
        location:   "away",
        score:      result["score"],
        home_team:  home_team.id,
        away_team:  away_team.id
      })
      away_team.events.push(event)
    end
  end

end
