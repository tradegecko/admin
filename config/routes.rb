Rails.application.routes.draw do
  resources :experiments
  root to: 'experiments#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
