Rails.application.routes.draw do
  get 'genres/show'

  get 'genres/new'

  get 'genres/edit'

  get 'songs/index'

  get 'songs/show'

  get 'songs/new'

  get 'songs/edit'

  get 'artists/index'

  get 'artists/show'

  get 'artists/new'

  get 'artists/create'

  get 'artists/edit'

  get 'artists/update'

  get 'artists/resources'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs
  resources :genres
  resources :artists
end
