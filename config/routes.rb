Rails.application.routes.draw do


  root to: 'pages#homepage'

  devise_for :users

  get "in_company", to: "pages#incompany"
  get "sponsor", to:  "pages#sponsor"
  get "attend", to: "pages#attend"

end
