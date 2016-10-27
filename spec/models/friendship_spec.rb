require 'rails_helper'

describe Friendship do
  let(:friendship) { Friendship.new( user_id: 1, friend_id: 2 ) }

  context ".user_id" do
    it "has a readable attribute" do
      expect(friendship.user_id).to eq 1
    end

    it "is necessary to be saved" do
      expect(friendship.save).to be true
    end

    it "cannot be saved if not present" do
      friendship.user_id = nil
      expect(friendship.save).to be false
    end
  end

  context ".friend_id" do
    it "has a readable attribute" do
      expect(friendship.friend_id).to eq 2
    end

    it "is necessary to be saved" do
      expect(friendship.save).to be true
    end

    it "cannot be saved if not present" do
      friendship.friend_id = nil
      expect(friendship.save).to be false
    end

  end

  context ".confirmed" do
    it "defaults to pending" do
      expect(friendship.confirmed).to eq false
    end

    it "can be changed" do
      friendship.confirmed = true
      expect(friendship.confirmed).to eq true
    end
  end

end
