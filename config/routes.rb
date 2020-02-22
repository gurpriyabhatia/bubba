Rails.application.routes.draw do
  get 'event_reviews/new'
  get 'event_reviews/create'
  devise_for :users
  root to: 'pages#home'
  resources :groups do
    resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :nannies do
  end

  resources :events do
    resources :event_reviews, only: [ :new, :create ]
  end
end
