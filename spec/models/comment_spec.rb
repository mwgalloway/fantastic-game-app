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
    let(:user) { User.new(username: "ada_lovelace", email: "a.turing@dbc.com", password: "1234")}
    let(:comment) { Comment.new }
    it "points to a user that authored the comment" do

    end
  end

end
