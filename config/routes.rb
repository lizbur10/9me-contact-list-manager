Rails.application.routes.draw do
  resources :customers
  resources :managers do
    resources :accounts
  end
  resources :accounts
  post 'accounts/upload', to: 'accounts#upload'
  root 'site#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
