Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :search, only: :index

  namespace :api do
    namespace :v1 do
      namespace :foods do
        post :search
      end
    end
  end
end
