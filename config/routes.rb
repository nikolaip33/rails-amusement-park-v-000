Rails.application.routes.draw do
  root 'welcome#home'
  get '/signup' => 'users#new'
  post '/signup' => 'user#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy'

  post '/ride' => 'rides#create'

  resources :rides
  resources :attractions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
