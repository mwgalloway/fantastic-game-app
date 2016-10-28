Rails.application.routes.draw do

  root to: 'games#index'

  get '/sessions/new' => "sessions#new", as: "new_session"
  post '/sessions' => "sessions#create", as: "session"
  delete '/logout' => "sessions#destroy", as: "logout"

  get '/friendships' => "friendships#index"
  post '/friendships' => "friendships#create"
  patch '/friendships' => "friendships#update"

  resources :users

  resources :games do
    resources :comments
  end

  resources :categories

  resources :libraries, only: [:create, :destroy]

end
