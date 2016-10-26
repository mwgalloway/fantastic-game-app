require 'rails_helper'

describe Friendship do
  let(:friendship) { Friendship.new( user1_id: 1, user2_id: 2 ) }

  context ".user1_id" do
    it "has a readable attribute" do
      expect(friendship.user1_id).to eq 1
    end

    it "is necessary to be saved" do
      expect(friendship.save).to be true
    end

    it "cannot be saved if not present" do
      friendship.user1_id = nil
      expect(friendship.save).to be false
    end
  end

  context ".user2_id" do
    it "has a readable attribute" do
      expect(friendship.user2_id).to eq 2
    end

    it "is necessary to be saved" do
      expect(friendship.save).to be true
    end

    it "cannot be saved if not present" do
      friendship.user2_id = nil
      expect(friendship.save).to be false
    end

  end

  context ".confirmed" do
    it "defaults to pending" do
      expect(friendship.confirmed).to eq "pending"
    end

    it "can be changed" do
      friendship.confirmed = "false"
      expect(friendship.confirmed).to eq "false"
    end
  end

end
