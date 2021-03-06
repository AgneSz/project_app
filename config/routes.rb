Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  resources :users
  resources :microposts, only: [:create, :destroy]
  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'static_pages#home'
  # # root 'application#hello'
  root 'static_pages#home'
  get '/help', to:    'static_pages#help'
  get '/about', to:   'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to:  'users#new'
end
