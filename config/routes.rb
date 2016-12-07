Rails.application.routes.draw do

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'signup'
  }

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  # nested routes comment can only be created when a event is created
  resources :events do
    resources :comments
  end

  resources :users, :only =>[:show]
  get "/users/:id/events", to: "users#show_user_events", as:"show_user_events"



  post '/events/:id/join', to: 'events#join', as: 'join_event'

  get '/aboutus', to: 'static_pages#aboutus'

  root 'static_pages#home'

end
