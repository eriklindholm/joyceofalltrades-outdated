Rails.application.routes.draw do
  
  resources :blogs, only: [:index, :show]
  resources :projects, only: [:index, :show]
  resources :plays, only: [:index, :show]

  resources :enquiries, path: 'contact', path_names: {new: ''}, only: [:new, :create] do
    collection do
      get :thanks
    end
  end

  get '/about', to: 'pages#about'
  root 'pages#home'

end
