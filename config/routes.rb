Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show] do
      resources :playlists, only: [:create, :index]
    end

    resource :sessions, only: [:create, :destroy]

    resources :artists, only: [:index, :show] do
      resources :albums, only: [:index]
    end

    resources :albums, only: [:show] do
      resources :songs, only: [:index]
    end

    resources :songs, only: [:show]
    resources :playlists, only: [:update, :destroy, :show]

    get '/albums', to: 'albums#all'
    get '/songs', to: 'songs#all'
    get '/playlists', to: 'playlists#all'
  end

end
