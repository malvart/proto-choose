Rails.application.routes.draw do
  root to: 'cookings#index'
  resources :cookings, only: [:index, :new, :create, :show, :destroy] do
    collection do
      get 'chooseIndex'
      get 'chooseSearch'
    end
  end
end
