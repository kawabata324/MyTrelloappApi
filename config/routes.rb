Rails.application.routes.draw do
  namespace :v1 do
    mount_devise_token_auth_for 'User', at: 'auth'
  end
  root 'tests#test'
  get '/test', to:'tests#test'
end
