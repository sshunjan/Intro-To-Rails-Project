Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'countries/index'
  get 'countries/show'
  resources :readers, only: [:index, :show]
  resources :countries, only: [:index, :show]
  resources :books, only: [:index, :show]

  get 'about', to: 'pages#about', as: 'about'
  get 'description',to: 'pages#description',as: 'description'

  root 'readers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
