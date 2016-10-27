require 'rails_helper'

describe UsersController do
  describe "GET #new" do
    it "responds with status code 200" do
      get :new
      expect(response).to have_http_status 200
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    context "when valid params are passed" do
      it "responds with status code 302" do
        post :create, { user: { username: "username", email: "email@email.com", password: "password", password_confirmation: "password" }}
        expect(response).to have_http_status 302
      end

      it "creates a new user in the database" do
        expect { post :create, { user: { username: "username", email: "email@email.com", password: "password", password_confirmation: "password" }} }.to change(User, :count).by(1)
      end
    end

    context "when invalid params are passed" do
      it "renders the :new template again" do
        post :create, { user: { username: "username", email: "email@email.com", password: "password", password_confirmation: "password" }}
        expect(response).to render_template(:new)
      end
    end
  end
end
