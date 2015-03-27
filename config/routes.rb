Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'
end
