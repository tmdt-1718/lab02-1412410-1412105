Rails.application.routes.draw do
	get '/friends', to: 'friends#index'
	get '/', to: 'messages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
