require 'rails_helper'

describe User do

  let (:user) { User.new(username: "username", email: "email@email.com", password: "password") }
  let (:invalid_user) { User.new }

  let(:game) { Game.where(name: "Parcheesi", min_players: 2, max_players: 4, duration: 30, description: "A really fun and cool game to play when you are super bored", img_url: "https://www.google.com", popularity: 80).first_or_create }

  describe ".username" do
    it "has a readable username" do
      expect(user.username).to eq "username"
    end

    it "is valid when it is not empty" do
      user.valid?
      expect(user.errors[:username]).to be_empty
    end

    it "is invalid when it is empty" do
      invalid_user.valid?
      expect(invalid_user.errors[:username]).to_not be_empty
    end
  end

  describe ".email" do
    it "has a readable email" do
      expect(user.email).to eq "email@email.com"
    end

    it "is valid when it is not empty" do
      user.valid?
      expect(user.errors[:email]).to be_empty
    end

    it "is invalid when it is empty" do
      invalid_user.valid?
      expect(invalid_user.errors[:email]).to_not be_empty
    end
  end

  describe ".password" do
    it "can save with a valid password" do
      expect(user.save).to be true
    end

    it "will not save without a password" do
      invalid_user.username = "username"
      invalid_user.email = "email@email.com"
      expect(invalid_user.save).to be false
    end
  end

  describe "associations" do
    context "games" do
      it { should have_many(:games).through(:user_games) }
    end

    context "comments" do
      it { should have_many(:comments) }
    end

    context "friends" do
      it { should have_many(:friendships) }
      it { should have_many(:inverse_friendships) }
      it "should have many friends" do
        user2 = User.create(username: "something", email: "something@something.com", password: "password")
        user.save
        user.friendships.create(friend: user2, confirmed: true)
        expect(user.friends.first).to eq user2
      end
    end
  end
end
