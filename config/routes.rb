Rails.application.routes.draw do

  # mount Forkids::API => '/'

  resources :profiles, only: [:index, :show, :new, :create, :update]
  resources :families, only: [:show, :new, :create, :update]

  namespace :admin do
    resources :users
    resources :profiles
    resources :families
    root to: "users#index"
  end

  namespace :my_family, module: :admin do
    resources :users
    resources :profiles
    root to: "profiles#index"
  end

#  devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root to: "profiles#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
