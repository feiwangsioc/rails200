Rails.application.routes.draw do
  namespace :account do
    resources :groups
  end
  
  devise_for :users
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end
  root 'groups#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
