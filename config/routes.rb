Rails.application.routes.draw do


  devise_for :users
  # devise_for :users
  resources :posts
  root 'welcome#index'

  get '*path' => redirect('/')



end
