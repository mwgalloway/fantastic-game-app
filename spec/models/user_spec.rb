require 'rails_helper'

describe User do 
  let (:user) { User.new(username: "username", email: "email@email.com", password: "password") }
  let (:invalid_user) { User.new }

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
end
