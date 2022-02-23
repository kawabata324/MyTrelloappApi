Rails.application.routes.draw do
  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
  resources :users, only: [:index, :show]
  resources :demo_users, only: [:index, :show]

  get '/test', to:'tests#test'
end
