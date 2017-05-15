Rails.application.routes.draw do


  

  devise_for :users
  resources :articles
  resources :resumes
  resources :abouts
  resources :services
  resources :contacts , only:[:new, :create]
  root 'welcome#index'
  
  get '*path' => redirect('/')



end
