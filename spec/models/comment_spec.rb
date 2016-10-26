require 'rails_helper'

describe Comment do
  let(:comment) { Comment.new }

  describe "validations" do
    it "is valid when a user, a game and content is present" do
      comment.author = 1
      comment.game = 1
      comment.content = "It is great fun! I would recommend it to everyone"
      comment.valid?
      expect(comment.errors).to be_empty
    end

    it "is not valid when it does not have a user" do
      comment.game = 1
      comment.content = "It is great fun! I would recommend it to everyone"
      comment.valid?
      expect(comment.errors[:user]).to_not be_empty
    end

    it "is not valid when it does not have a game" do
      comment.author = 1
      comment.content = "It is great fun! I would recommend it to everyone"
      comment.valid?
      expect(comment.errors[:game]).to_not be_empty
    end

    it "is not valid when it does not have content" do
      comment.author = 1
      comment.game = 1
      comment.valid?
      expect(comment.errors[:game]).to_not be_empty
    end
  end

  describe "associations" do
    let(:user) { User.new(username: "ada_lovelace", email: "a.turing@dbc.com", password: "1234") }
    let(:game) { Game.new(name: "Yatzee", duration: "600 mins", max_players: 10, min_players: 5, description: "fun game", popularity: 10) }
    let(:comment) { Comment.new(user_id: (:user).id, game_id: (:game).id), content: "omg, so boring." }

    it "points to a user that authored the comment" do
      expect(comment.user).to eq :user
    end

     it "points to the game the comment is about" do
      expect(comment.game).to eq :game
    end

    end
  end

end
