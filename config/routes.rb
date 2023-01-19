# require 'sidekiq/web'

Rails.application.routes.draw do
  # authenticate :user, lambda { |u u.admin? } do
  #   mount Sidekiq ::web => '/sidekiq'
  # end

  # devise_for :users
  resources :rides, :users, :layouts

  get 'welcome/index'

  get 'users/:id', to: 'users#show'

  get 'rides/:id' , to: 'rides#show'

  
  
  get 'exit', to: 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

end
