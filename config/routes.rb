Rails.application.routes.draw do
  root to: 'pages#homepage'
  devise_for :users

  namespace :admin do
    resources :sponsorrequests

  get "in_company", to:  "pages#incompany"
  get "sponsor", to:  "pages#sponsor"
  get "attend", to: "pages#attend"

  namespace :admin do
    resources :sponsors
  end

  resources :workshops
  resources :sponsorrequests
end
