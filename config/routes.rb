Rails.application.routes.draw do
  devise_for :users

  root to: 'homepage#index'
  resources :posts do
    resources :image
  end

  namespace :admin do
    resources :posts
  end
end
