Rails.application.routes.draw do
  get 'home/index'
  get 'search/create'
  resources :categories
  resources :types
  resources :bookmarks

  get "/api", to: "categories#api"
  get "search/create"

  root 'bookmarks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
