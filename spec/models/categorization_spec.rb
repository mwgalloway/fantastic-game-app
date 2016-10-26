require 'rails_helper'

describe Categorization do
  let(:categorization) { Categorization.new(game_id: 1, category_id: 1) }

  describe 'attributes' do
    it "has a readable game_id" do
      expect(categorization.game_id).to eq 1
    end

    it "has a readable category_id" do
      expect(categorization.category_id).to eq 1
    end
  end

  describe 'validations' do
    it 'must have a game_id' do
      new_categorization = Categorization.new(category_id: 1)
      expect(new_categorization.valid?).to eq false
    end

    it 'must have a category_id' do
      new_categorization = Categorization.new(game_id: 1)
      expect(new_categorization.valid?).to eq false
    end

    it 'must be a unique game in the scope of a single category' do
      categorization.save
      duplicate = Categorization.new(game_id: 1, category_id: 1)
      expect(duplicate.valid?).to eq false
    end
  end
end
