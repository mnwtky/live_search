Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  get 'events/search'
  resources :users, only: [:show]
  resources :events, only: [:index, :new, :create, :show]

  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
