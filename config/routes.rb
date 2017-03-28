Rails.application.routes.draw do
  root to: 'pages#homepage'

<<<<<<< HEAD
  get "book_in_company/home", :to "pages#incompany"
=======
  devise_for :users

  get "book_in_company/home", :to => "book_in_company#home"
>>>>>>> e6d84bf689803f4e6e77df177a506dacba245b38

  get "sponsor/home", :to "pages#sponsor"

  get "attend/home", :to "pages#public"

end
