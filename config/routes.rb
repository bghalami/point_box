Rails.application.routes.draw do
  get 'pages/secret'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Add a root route if you don't have one...
	# We can use users#new for now:
	root to: 'homepage#show'

  resource :users, only: [:new, :create]

  # user show page
  get '/users/:id' => 'users#show', as: :user

  # log in page with form:
  get '/login' => 'sessions#new'
	# create (post) action for when log in form is submitted:
	post '/login' => 'sessions#create'
	# delete action to log out:
	delete '/logout' => 'sessions#destroy'
end
