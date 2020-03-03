Rails.application.routes.draw do
  get '/dashboard', to: "pages#dashboard", as: :dashboard
  get 'event_reviews/create'
  devise_for :users
  root to: 'pages#home'
  resources :groups do
    resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :nannies do
    resources :nanny_bookings
  end
  # Note(arthur): these are wrong but let's change when we do the page (better to learn)
  resources :event_bookings, only: [:destroy, :index, :show]
  resources :event_reviews, only: [ :new, :create ]

  resources :events, only: [:index, :show] do
    resources :event_bookings, only: [:new, :create]
    # get '/confirmation' to: "pages#dashboard", as: :dashboard
  end
end
