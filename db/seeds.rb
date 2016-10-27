#Games Seeds

hot_list = BggApi.hot('')["item"]

hot_list[1..10].each do |item|
  details = BggApi.thing("id" => item["id"])
  Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
end

sleep(10)

hot_list[11..20].each do |item|
  details = BggApi.thing("id" => item["id"])
  Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
end

sleep(10)

hot_list[21..30].each do |item|
  details = BggApi.thing("id" => item["id"])
  Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
end

sleep(10)

hot_list[31..40].each do |item|
  details = BggApi.thing("id" => item["id"])
  Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
end

sleep(10)

hot_list[41..50].each do |item|
  details = BggApi.thing("id" => item["id"])
  Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
end
