require 'rails_helper'

describe Category do
  let(:category) { Category.new(name: "Bluffing") }

  describe "attributes" do
    it "has a readable name" do
      expect(category.name).to eq "Bluffing"
    end
  end

  describe "validations" do
    it "has a unique name" do
      category.save
      duplicate = Category.create(name: "Bluffing")
      expect(duplicate.errors).to_not be_empty
    end
  end
end
