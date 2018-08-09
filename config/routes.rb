Rails.application.routes.draw do
  root to: 'movie#index'
  post '/search', to: 'movie#search', as: 'search'
  get '/show', to: 'movie#show', as: 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
