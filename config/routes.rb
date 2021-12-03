Rails.application.routes.draw do
 scope :api do 
  resources :users
  resources :playlists
  resources :tracks
  resources :artists
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
 end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
