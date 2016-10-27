require 'rails_helper'

describe Game do
  let(:game) { Game.new(name: "Parcheesi", min_players: 2, max_players: 4, duration: 30, description: "A really fun and cool game to play when you are super bored", img_url: "https://www.google.com", popularity: 80) }

  # describe ".recent" do
  #   it "shows the most recent games" do
  #     game.user_throw = "paper"
  #     game.computer_throw = "rock"
  #     game.save

  #     expect(Game.recent.length).to eq 1
  #   end

  #   it "only shows the 5 most recent games" do
  #     another_game = Game.new
  #     another_game.user_throw = "rock"
  #     another_game.computer_throw = "scissors"
  #     another_game.save

  #     5.times do
  #       new_game = Game.new
  #       new_game.user_throw = "paper"
  #       new_game.computer_throw = "rock"
  #       new_game.save
  #     end

  #     expect(Game.recent).not_to include(another_game)
  #   end
  # end

  describe "ensures the presence of attributes" do
    context "will save with all attributes" do
      it "is valid if all attributes are present" do
        expect(game.valid?).to eq true
      end
    end

    context "will not save without all attributes" do
      it "is NOT valid if name is not present" do
        game.name = nil
        expect(game.valid?).to eq false
      end

      it "is NOT valid if min_players is not present" do
        game.min_players = nil
        expect(game.valid?).to eq false
      end

      it "is NOT valid if max_players is not present" do
        game.max_players = nil
        expect(game.valid?).to eq false
      end

      it "is NOT valid if duration is not present" do
        game.duration = nil
        expect(game.valid?).to eq false
      end

      it "is NOT valid if description is not present" do
        game.description = nil
        expect(game.valid?).to eq false
      end

      it "is NOT valid if img_url is not present" do
        game.img_url = nil
        expect(game.valid?).to eq false
      end

      it "is NOT valid if popularity is not present" do
        game.popularity = nil
        expect(game.valid?).to eq false
      end

    end
  end

  describe "ensures uniqueness of attributes" do
    context "validates uniqueness" do
      it "is valid when another game has a different name" do
        game.save
        new_game = Game.new(name: "Checkers", min_players: 2, max_players: 4, duration: 30, description: "A really fun and cool game to play when you are super bored and that you can relate to that", img_url: "https://www.googling.com/index", popularity: 80)

        expect(new_game.valid?).to eq true
      end

      it "is NOT valid when another game has the same name" do
        game.save
        new_game = Game.new(name: "Parcheesi", min_players: 2, max_players: 4, duration: 30, description: "A really fun and cool game to play when you are super bored and that you can relate to that", img_url: "https://www.googling.com/index", popularity: 80)

        expect(new_game.valid?).to eq false
      end

      it "is NOT valid when another game has the same img url" do
        game.save
        new_game = Game.new(name: "Checkers", min_players: 2, max_players: 4, duration: 30, description: "A really fun and cool game to play when you are super bored and that you can relate to that", img_url: "https://www.google.com", popularity: 80)
        expect(new_game.valid?).to eq false
      end

      it "is NOT valid when another game has the same description" do
        game.save
        new_game = Game.new(name: "Checkers", min_players: 2, max_players: 4, duration: 30, description: "A really fun and cool game to play when you are super bored", img_url: "https://www.googlers.com", popularity: 80)
        expect(new_game.valid?).to eq false
      end

    end
  end

  describe "associations" do
    context "users" do
      it "has many users" do
        expect(game.users).to be_a_kind_of(ActiveRecord::Relation)
      end

      it "can have users added" do
        user = User.create(username: "username", email: "email@email.com", password: "password")
        game.users << user
        expect(game.users.first).to be_a_kind_of(User)
      end
    end
  end
end
