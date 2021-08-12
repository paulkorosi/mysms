Mysms::Application.routes.draw do
  #root :to => 'home#index'
  root to: 'home#index'

  resources :home, only: [:index]

  resources :students, only: [:index]

  
end
