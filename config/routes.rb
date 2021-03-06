Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# custom routes
  get "spaces", to: "spaces#index"
  patch "space/:id", to:'spaces#update'
  patch "user/:id", to:'users#update'
  get "user/:id", to: "users#show", as: :user
  get "dashboard", to: "users#dashboard", as: :dashboard
  get "spaces/new", to: "spaces#new"
  delete "picture/:id", to: 'pictures#destroy',as: :picture
  delete "booking/:id", to: 'bookings#destroy',as: :booking
  post "spaces", to: "spaces#create"
  get "space/:id/edit", to: 'spaces#edit', as: :space_edit
  get "user/:id/edit", to: 'users#edit', as: :user_edit
  delete "space/:id", to: 'spaces#destroy', as: :delete_space
  get "picture/:id", to: "pictures#edit", as: :edit_picture
  # patch "picture/:id", to: "pictures#update", as: :picture
  get "space/:id", to: "spaces#show", as: :space
  post "bookings", to: "bookings#create"
  # resources :users do
  #   resources :spaces
  # end
end

