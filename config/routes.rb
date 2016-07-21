Rails.application.routes.draw do
  


  resources :blogs, only: [:index, :show]
  resources :projects, only: [:index, :show]
  resources :plays, only: [:index, :show]

  get '/about', to: 'pages#about'
  root 'pages#home'
end
