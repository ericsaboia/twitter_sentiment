Rails.application.routes.draw do
  root 'twitters#index'

  resources :twitters, only: :index

end
