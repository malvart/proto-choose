Rails.application.routes.draw do
  root to: 'cookings#index'
  resources :cookings do
    collection do
      get 'chooseIndex'
      get 'chooseSearch'
    end
    member do
      get 'imageDestroy'
    end
  end
end
