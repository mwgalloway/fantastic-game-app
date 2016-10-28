#Games Seeds

hot_list = BggApi.hot('')["item"]

hot_list[0..10].each do |item|
  details = BggApi.thing("id" => item["id"])
  new_game = Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
  categories = details["item"].first["link"].select { |category| category["type"] == "boardgamecategory" }
  categories_to_add = categories.each { |category| Category.find_or_create_by(name: category["value"])}
  categories_to_add.each { |category| new_game.categories << Category.find_by(name: category["value"]) }
end

sleep(12)

hot_list[11..20].each do |item|
  details = BggApi.thing("id" => item["id"])
  new_game = Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
  categories = details["item"].first["link"].select { |category| category["type"] == "boardgamecategory" }
  categories_to_add = categories.each { |category| Category.find_or_create_by(name: category["value"])}
  categories_to_add.each { |category| new_game.categories << Category.find_by(name: category["value"]) }
end

sleep(12)

hot_list[21..30].each do |item|
  details = BggApi.thing("id" => item["id"])
  new_game = Game.create!(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
  categories = details["item"].first["link"].select { |category| category["type"] == "boardgamecategory" }
  categories_to_add = categories.each { |category| Category.find_or_create_by(name: category["value"])}
  categories_to_add.each { |category| new_game.categories << Category.find_by(name: category["value"]) }
end

sleep(12)

hot_list[31..40].each do |item|
  details = BggApi.thing("id" => item["id"])
  new_game = Game.create!(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
  categories = details["item"].first["link"].select { |category| category["type"] == "boardgamecategory" }
  categories_to_add = categories.each { |category| Category.find_or_create_by(name: category["value"])}
  categories_to_add.each { |category| new_game.categories << Category.find_by(name: category["value"]) }
end

sleep(12)

hot_list[41..50].each do |item|
  details = BggApi.thing("id" => item["id"])
  new_game = Game.create(name: item["name"].first["value"],
    popularity: item["rank"].to_i,
    description: details["item"].first["description"].first,
    min_players:details["item"].first["minplayers"].first["value"].to_i,
    max_players: details["item"].first["maxplayers"].first["value"].to_i,
    img_url: details["item"].first["image"].first,
    duration: details["item"].first["playingtime"].first["value"].to_i )
  categories = details["item"].first["link"].select { |category| category["type"] == "boardgamecategory" }
  categories_to_add = categories.each { |category| Category.find_or_create_by(name: category["value"])}
  categories_to_add.each { |category| new_game.categories << Category.find_by(name: category["value"]) }
end

User.create(username: "admin", email: "admin@localhost", password: "password")

20.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

100.times do
  Comment.create(game_id: rand(1..30), user_id: rand(1..20), content: Faker::StarWars.quote)
end

150.times do
  user = User.find(rand(1..20))
  game = Game.find(rand(1..30))
  user.games << game unless user.games.include?(game)
end

100.times do
  user = User.find(rand(1..20))
  friend = User.find(rand(1..20))
  next if user == friend
  next if user.friends.include?(friend)
  user.friendships.create(user_id: user.id, friend_id: friend.id, confirmed: true)

end

