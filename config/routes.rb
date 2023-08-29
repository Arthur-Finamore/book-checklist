Rails.application.routes.draw do
  devise_for :users

  root 'books#index'
  resources :books do
    member do
      get 'show_pdf', format: :pdf
    end
  end
end
