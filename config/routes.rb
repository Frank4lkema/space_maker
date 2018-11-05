Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# custom routes
  get "spaces", to: "spaces#index"
  get "user/:id", to: "users#show"
  get "dashboard", to: "users#dashboard"
  get "spaces/new", to: "spaces#new"
  post "space", to: "spaces#create"
  get "space/:id/edit", to: 'spaces#edit'
  patch "space/:id", to:'spaces#update'
  delete "space/:id", to: 'spaces#destroy'
  get "spaces/:id", to: "spaces#show"
end
