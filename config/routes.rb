Rails.application.routes.draw do
  root to: 'pages#homepage'

  devise_for :users

  get "book_in_company/home", :to "pages#incompany"

  get "sponsor/home", :to => "pages#sponsor"

  get "attend/home", :to => "pages#public"

end
