require 'rails_helper'

describe UserGame do
  let(:libary) { UserGame.new }
  let(:user) { User.new(username: "ada_lovelace", email: "a.turing@dbc.com", password: "1234") }
  let(:game) { Game.new(name: "Yatzee", duration: "600 mins", max_players: 10, min_players: 5, description: "fun game", popularity: 10) }

  describe "validations" do
    it "it is valid when a user and game are present" do
      library.user = user
      library.game = game
      library.valid?
      expect(library.errors).to be_empty
    end

    it "is not valid when it does not have a user" do
      library.game = game
      library.valid?
      expect(library.errors[:game]).to_not be_empty
    end


    it "is not valid when it does not have a game" do
      library.user = user
      library.valid?
      expect(library.errors[:user]).to_not be_empty
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
