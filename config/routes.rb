Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users
  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos
  resources :categories

  resources :events do
    resources :registrations, only: [:create]
  end

  namespace :api do
    resources :events
    resources :categories
  end
end
