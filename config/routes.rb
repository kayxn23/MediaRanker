Rails.application.routes.draw do
  root "main#index"

  post 'works/:id/upvote', to: 'works#upvote', as: 'work_votes'
  post 'sessions/login', to: 'sessions#login', as: 'login' #or just user login?
  get 'sessions/login', to: 'sessions#new'
  delete 'sessions/destroy', to: 'sessions#destroy', as: 'logout'

  get 'main/index', as: 'main'

  resources :works, :users

  # resources :works do
  #   resources :users, only: [:show]
  # end



end
