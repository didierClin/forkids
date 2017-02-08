Rails.application.routes.draw do

  resources :profiles, only: [:index, :show, :new, :create, :update]
  resources :families, only: [:show, :new, :create, :update]

  namespace :admin do
    resources :users
    root to: "users#index"
  end

  namespace :my_family, module: :admin do
    resources :users
    root to: "users#index"
  end

  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
