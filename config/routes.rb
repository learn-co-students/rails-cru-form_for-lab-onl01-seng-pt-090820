Rails.application.routes.draw do
  resources :genres, only: [:new, :update, :edit, :show, :create]
  resources :songs, only: [:index, :new, :update, :edit, :show, :create]
  resources :artists, only: [:new, :update, :edit, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch 'genres/:id', to: 'genres#update'
  patch 'songs/:id', to: 'songs#update'
  patch 'artists/:id', to: 'artists#update'

end
