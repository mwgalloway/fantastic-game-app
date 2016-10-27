require 'rails_helper'

describe GamesController do
  let!(:game) { Game.create!(name: "Parcheesi", popularity: 1, description: "Great Game", min_players: 2, max_players: 4, img_url: "This is an image", duration: 30) }

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "assigns all games as @games" do
      get :index
      expect(assigns(:games)).to eq(Game.all)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
