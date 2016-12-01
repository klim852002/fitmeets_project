Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_for :users, path: '', path_names: {
  #   sign_in: 'login',
  #   sign_out: 'logout',
  #   sign_up: 'signup'
  # }

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  resources :events
  root 'static_pages#home'

end
