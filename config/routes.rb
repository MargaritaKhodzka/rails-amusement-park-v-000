Rails.application.routes.draw do

  root 'welcome#index'
  resources :users, except: [:index, :destroy]
  resources :attractions, except: :destroy
  post '/rides', to: 'rides#create'
  get '/signin', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

end
