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
      expect(duplicate.valid?).to eq false
    end

    it "must have a name" do
      new_category = Category.create
      expect(new_category.valid?).to eq false
    end
  end

end
