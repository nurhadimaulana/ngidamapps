Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :search, only: :index
end
