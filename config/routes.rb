Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :sessions, only: [:create, :destroy]

    resources :artists, only: [:index, :show] do
      resources :albums, only: [:index]
    end

    resources :albums, only: [:show] do
      resources :songs, only: [:index]
    end

    resources :songs, only: [:show]
    resources :playlists

    get '/albums', to: 'albums#all'
    get '/songs', to: 'songs#all'
  end

end
