#Games Seeds

hot_list = BggApi.hot('')["item"]

hot_list[2..4].each do |item|
  details = BggApi.thing("id" => item["id"])
  new_game = Game.create!(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
  # categories = details["item"].first["link"].select { |category| category["type"] == "boardgamecategory" }

  # categories_to_add = categories.each { |category| Category.find_or_create_by(name: category["value"])}

  # categories_to_add.each { |category| new_game.categories << category }

  # new_game.save
end

sleep(10)

hot_list[11..20].each do |item|
  details = BggApi.thing("id" => item["id"])
  Game.create!(name: item["name"].first["value"],
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
  Game.create!(name: item["name"].first["value"],
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
  Game.create!(name: item["name"].first["value"],
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
  Game.create!(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
end




{"termsofuse"=>"http://boardgamegeek.com/xmlapi/termsofuse",
  "item"=>[{"type"=>"boardgame", "
    id"=>"2",
    "thumbnail"=>["//cf.geekdo-images.com/images/pic184174_t.jpg"],
    "image"=>["//cf.geekdo-images.com/images/pic184174.jpg"],
    "name"=>[{"type"=>"primary", "sortindex"=>"1", "value"=>"Dragonmaster"}],
    "description"=>["Dragonmaster is a trick-taking card game based on an older game called Coup d'etat. Each player is given a supply of plastic gems, which represent points. Each player will get to be the dealer for five different hands, with slightly different goals for each hand. After all cards have been dealt out, the dealer decides which hand best suits his or her current cards, and the other players are penalized points (in the form of crystals) for taking certain tricks or cards. For instance, if &quot;first&quot; or &quot;last&quot; is called, then a player is penalized for taking the first or last tricks. All players will get a chance to be dealer for five hands, but other players can steal this opportunity by taking all of the tricks during certain hands. At the end, the biggest pile of gems wins the game&#10;&#10;"], "yearpublished"=>[{"value"=>"1981"}], "minplayers"=>[{"value"=>"3"}], "maxplayers"=>[{"value"=>"4"}], "poll"=>[{"name"=>"suggested_numplayers", "title"=>"User Suggested Number of Players", "totalvotes"=>"3", "results"=>[{"numplayers"=>"1", "result"=>[{"value"=>"Best", "numvotes"=>"0"}, {"value"=>"Recommended", "numvotes"=>"0"}, {"value"=>"Not Recommended", "numvotes"=>"2"}]}, {"numplayers"=>"2", "result"=>[{"value"=>"Best", "numvotes"=>"0"}, {"value"=>"Recommended", "numvotes"=>"0"}, {"value"=>"Not Recommended", "numvotes"=>"2"}]}, {"numplayers"=>"3", "result"=>[{"value"=>"Best", "numvotes"=>"0"}, {"value"=>"Recommended", "numvotes"=>"1"}, {"value"=>"Not Recommended", "numvotes"=>"1"}]}, {"numplayers"=>"4", "result"=>[{"value"=>"Best", "numvotes"=>"3"}, {"value"=>"Recommended", "numvotes"=>"0"}, {"value"=>"Not Recommended", "numvotes"=>"0"}]}, {"numplayers"=>"4+", "result"=>[{"value"=>"Best", "numvotes"=>"0"}, {"value"=>"Recommended", "numvotes"=>"0"}, {"value"=>"Not Recommended", "numvotes"=>"2"}]}]}, {"name"=>"suggested_playerage", "title"=>"User Suggested Player Age", "totalvotes"=>"0", "results"=>[{"result"=>[{"value"=>"2", "numvotes"=>"0"}, {"value"=>"3", "numvotes"=>"0"}, {"value"=>"4", "numvotes"=>"0"}, {"value"=>"5", "numvotes"=>"0"}, {"value"=>"6", "numvotes"=>"0"}, {"value"=>"8", "numvotes"=>"0"}, {"value"=>"10", "numvotes"=>"0"}, {"value"=>"12", "numvotes"=>"0"}, {"value"=>"14", "numvotes"=>"0"}, {"value"=>"16", "numvotes"=>"0"}, {"value"=>"18", "numvotes"=>"0"}, {"value"=>"21 and up", "numvotes"=>"0"}]}]}, {"name"=>"language_dependence", "title"=>"Language Dependence", "totalvotes"=>"1", "results"=>[{"result"=>[{"level"=>"1", "value"=>"No necessary in-game text", "numvotes"=>"0"}, {"level"=>"2", "value"=>"Some necessary text - easily memorized or small crib sheet", "numvotes"=>"1"}, {"level"=>"3", "value"=>"Moderate in-game text - needs crib sheet or paste ups", "numvotes"=>"0"}, {"level"=>"4", "value"=>"Extensive use of text - massive conversion needed to be playable", "numvotes"=>"0"}, {"level"=>"5", "value"=>"Unplayable in another language", "numvotes"=>"0"}]}]}], "playingtime"=>[{"value"=>"30"}], "minplaytime"=>[{"value"=>"30"}], "maxplaytime"=>[{"value"=>"30"}], "minage"=>[{"value"=>"12"}], "link"=>[{"type"=>"boardgamecategory", "id"=>"1002", "value"=>"Card Game"}, {"type"=>"boardgamecategory", "id"=>"1010", "value"=>"Fantasy"}, {"type"=>"boardgamemechanic", "id"=>"2009", "value"=>"Trick-taking"}, {"type"=>"boardgamefamily", "id"=>"7005", "value"=>"Animals: Dragons"}, {"type"=>"boardgameimplementation", "id"=>"2174", "value"=>"Coup d'etat", "inbound"=>"true"}, {"type"=>"boardgamedesigner", "id"=>"8384", "value"=>"G. W. \"Jerry\" D'Arcey"}, {"type"=>"boardgameartist", "id"=>"12424", "value"=>"Bob Pepper"}, {"type"=>"boardgamepublisher", "id"=>"64", "value"=>"E.S. Lowe"}, {"type"=>"boardgamepublisher", "id"=>"20", "value"=>"Milton Bradley"}]}]}
