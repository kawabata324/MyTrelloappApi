Rails.application.routes.draw do
  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
  resources :users, only: [:index, :show]
  resources :demo_users, only: [:index, :show]
  resources :cards, only: [:index, :create]
  resources :lists, only: [:index, :create]

  get '/test', to:'tests#test'
end
