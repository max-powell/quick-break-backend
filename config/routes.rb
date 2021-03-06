Rails.application.routes.draw do
  resources :user_trips, except: [:new, :edit]
  resources :trips, except: [:new, :edit] do
    resources :locations, only: [:index, :create, :update]
    resources :unavailable_dates, only: [:index, :create, :destroy]
  end
  resources :users, only: [:index, :create, :destroy]

  get '/login/:name', to: 'users#login'
end
