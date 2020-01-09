Rails.application.routes.draw do
  resources :exhibs
  resources :artists
  resources :artworks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'artworks#index'
end