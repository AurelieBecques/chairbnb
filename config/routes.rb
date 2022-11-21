Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :chairs, only: %i[index new create show] do
    resources :bookings, only: %i[create]
  end

  resources :bookings, only: %i[index]
  resources :owner_bookings, only: %i[index] do
    member do
      patch :accept
      patch :deny
    end
  end


end
