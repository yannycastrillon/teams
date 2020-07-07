Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'teams#index'

  get '/teams', to: 'teams#index', as: 'teams'
  get '/teams/new', to: 'teams#new', as: 'new_team'
  post '/teams', to: 'teams#create'

  get '/teams/:id', to: 'teams#show', as: 'team'
  get '/teams/:id/edit', to: 'teams#edit', as: 'edit_team'

  patch '/teams/:id', to: 'teams#update'
  put '/teams/:id', to: 'teams#update'

  delete '/teams/:id', to: 'teams#destroy', as: 'delete_teams'
end
