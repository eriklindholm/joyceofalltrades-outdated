Rails.application.routes.draw do
  

  get 'pages/home'
  get 'pages/about'

  resources :blogs, only: [:index, :show]
  resources :projects, only: [:index, :show]

  root 'pages#home'
end
