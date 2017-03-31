Rails.application.routes.draw do
  root to: 'pages#homepage'

  #devise_for :users

  get "in_company", to:  "pages#incompany"
  get "sponsor", to:  "pages#sponsor"
  get "attend", to: "pages#attend"

  resources :incompanies, only: [:new, :create]

  namespace :admin  do
    resources :events
    resources :incompanies, only: [:index, :show, :edit, :update, :destroy]

  end

  get 'admin', to: "admin#index"

end
