Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'books#index'

  resources :books do
    resources :printing_prices, shallow: true
    member do
      get 'show_pdf', format: :pdf
      get 'printing_prices_show', to: 'books#printing_prices_show', as: 'printing_prices_show'
    end
    collection do
      get 'printing_prices_index', to: 'books#printing_prices_index', as: 'printing_prices_index'
      get 'all', to: 'books#all', as: 'all'
    end
  end


  resources :kit_books do
    resources :items
  end
   # Registrar o controller search
   resources :search, controller: 'search', stimulus: './search_controller'
end
