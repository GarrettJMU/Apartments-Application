Rails.application.routes.draw do
devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 
resources :listings
  root 'listings#index'
  get 'listings/markers'
  post 'listings/search'
  get 'listings/search'
end
