Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  delete '/listings/:id', to: 'listings#destroy', as: :listing_destroy
  resources :listings do
    resources :bookings, only: %i[index new create edit update]
  end
  get '/confirmation', to: 'pages#confirmation'
  get '/my_listings', to: 'pages#my_listings'
  get '/edit_account', to: 'pages#edit_acccount'
end
