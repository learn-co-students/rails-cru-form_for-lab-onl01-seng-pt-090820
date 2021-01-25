Rails.application.routes.draw do
  # get 'genres/new'

  # get 'genres/index'

  # get 'genres/show'

  # get 'genres/edit'

  # get 'songs/new'

  # get 'songs/index'

  # get 'songs/show'

  # get 'songs/edit'

  # get 'artists/new'

  # get 'artists/index'

  # get 'artists/show'

  # get 'artists/edit'


  resources :genres
  resources :artists
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
