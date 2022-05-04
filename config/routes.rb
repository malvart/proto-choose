Rails.application.routes.draw do
  root to: 'cookings#index'
  resources :cookings, only: [:index, :new, :create, :show, :destroy] do
    collection do
      get 'choose'
    end
  end
end
