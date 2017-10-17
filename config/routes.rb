Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index', as: :home
  get '/sessions/login', to: 'sessions#index', as: :login
  post '/sessions/login', to: 'sessions#create', as: nil
  delete '/sessions/logout', to: 'sessions#destroy', as: :logout
  get 'users/register', to: 'users#index', as: :register
  post 'users/register', to: 'users#create', as: nil
  get '/about', to: 'about#index'
end
