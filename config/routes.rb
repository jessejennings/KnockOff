Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :items, only: [:create]
  end  

  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'
end
