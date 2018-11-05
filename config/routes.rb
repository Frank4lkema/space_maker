Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# custom routes
  get "spaces", to: "space#index", as: :list
  get "user/:id", to: "user#show"
  get "dashboard", to: "user#dashboard"
  get "spaces/new", to: "space#new"
  post "space", to: "space#create"
  get "space/:id/edit", to: 'space#edit'
  patch "space/:id", to:'space#update'
  delete "space/:id", to: 'space#destroy'
  get "spaces/:id", to: "space#show", as: :space
end
