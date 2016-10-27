require 'rails_helper'

describe SessionsController do
  let(:user) { User.create!(username: "username", email: "email@email.com", password: "password") }

  describe "GET #new" do
    it "respons with status code 200" do
      get :new
      expect(response).to have_http_status 200
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  # describe "POST #create" do
  #   context "when valid params are passed" do
  #     it "responds with status code 302" do
  #       post :create, { username: "username",  password: "password"  }
  #       expect(response).to have_http_status 302
  #     end

  #     it "creates a new session when user logs in" do
  #       post :create, { username: "username",  password: "password"  }
  #       expect(session[:user_id]).to_not be_nil
  #     end

  #     it "assigns the correct user to @user" do
  #       post :create, { username: "username",  password: "password"  }
  #       expect(assigns(:user)).to be_an_instance_of(User)
  #     end
  #   end

  #   describe "DELETE #destroy" do
  #     it "responds with status code 302" do
  #       delete :destroy
  #       expect(response).to have_http_status 302
  #     end

  #     it "deletes the current_user session" do
  #       delete :destroy
  #       expect(session[:user_id]).to be_nil
  #     end
  #   end
  # end
end
