Rails.application.routes.draw do
  get 'printing_prices/index'
  get 'printing_prices/show'
  get 'printing_prices/create'
  get 'printing_prices/update'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'books#index'
  resources :books do
    member do
      get 'show_pdf', format: :pdf
    end
    collection do
      get 'all', to: 'books#all', as: 'all'
    end
  end
end
