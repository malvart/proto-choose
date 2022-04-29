Rails.application.routes.draw do
  root to: 'cooking#index'
  resources :cooking, only: :index
end
