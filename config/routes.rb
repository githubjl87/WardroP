# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")

Rails.application.routes.draw do
  devise_for :users
  root to: "apparels#index"
  resources :apparels, only: [ :index, :show, :new, :create, :edit, :update, :destroy ] do
    resources :rentals, only: [ :create ]
  end
  namespace :owner do
    resources :rentals, only: :index
  end
  resources :rentals, only: [ :index, :edit, :update ]
end
