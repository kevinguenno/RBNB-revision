Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats do
    resources :bookings, only: %i[create new]
  end
  resources :bookings, only: %i[index destroy]
end
