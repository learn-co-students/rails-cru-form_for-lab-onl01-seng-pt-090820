Rails.application.routes.draw do
  get 'artists/name'

  get 'artists/bio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists , :songs, :genres, only: [:index, :show, :new, :update, :edit ]
end
