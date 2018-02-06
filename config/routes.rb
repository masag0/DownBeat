Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :playlists, only: [:index]
    end

    resource :sessions, only: [:create, :destroy]

    resources :artists, only: [:index, :show] do
      resources :albums, only: [:index]
    end

    resources :albums, only: [:show] do
      resources :songs, only: [:index]
    end

    resources :songs, only: [:show]
    resources :playlists, only: [:create, :update, :destroy, :show]
    resources :playlist_songs, only: [:create]

    get '/albums', to: 'albums#all'
    get '/songs', to: 'songs#all'
    get '/playlists', to: 'playlists#all'
    get '/playlists/:playlist_id/songs', to: 'songs#playlist_song_index'
    post '/playlist_songs/delete/', to: 'playlist_songs#delete_song'
    get '/search/:query', to: 'search#index'
    # get '/playlists/:playlist_id/albums', to: 'albums#playlist_album_index'
    # get '/playlists/:playlist_id/artists', to: 'artists#playlist_artist_index'
  end

end
