Rails.application.routes.draw do
  resources :user_trips, except: [:new, :edit] do
    resources :unavailable_dates, only: [:index, :create, :destroy]
  end
  resources :trips, except: [:new, :edit] do
    resources :locations, only: [:index, :create, :update]
  end
  resources :users, only: [:index, :create, :destroy]
end
