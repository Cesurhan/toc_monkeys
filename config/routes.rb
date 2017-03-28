Rails.application.routes.draw do
  root to: 'pages#homepage'

  devise_for :users

  get "book_in_company/home", :to => "book_in_company#home"

  get "sponsor/home", :to => "sponsor#home"

  get "attend/home", :to => "attend#home"

end
