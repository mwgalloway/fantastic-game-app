require 'rails_helper'

describe UserGame do
  let(:library) { UserGame.new }
  let(:user) { User.new(username: "ada_lovelace", email: "a.turing@dbc.com", password: "1234") }
  let(:game) { Game.new(name: "Yatzee", duration: "600 mins", max_players: 10, min_players: 5, description: "fun game", popularity: 10) }

  describe "validations" do
    it "it is valid when a user and game are present" do
      library.user_id = 1
      library.game_id = 1
      library.valid?
      expect(library.errors).to be_empty
    end

    it "is not valid when it does not have a user" do
      library.game_id = 1
      library.valid?
      expect(library.errors).to_not be_empty
    end


    it "is not valid when it does not have a game" do
      library.user_id = 1
      library.valid?
      expect(library.errors).to_not be_empty
    end

    it 'must be a unique game in the scope of a single category' do
      library = UserGame.create(user_id: 1, game_id: 1)
      duplicate = UserGame.new(user_id: 1, game_id: 1)
      expect(duplicate.valid?).to eq false
    end
  end

  describe "associations" do
    it "points to the user it belongs to" do
      library.user = user
      library.game = game
      expect(library.user).to eq user
    end
    it "points to the game it belongs to" do
      library.user = user
      library.game = game
      expect(library.game).to eq game
    end
  end
end
