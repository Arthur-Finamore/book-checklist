Rails.application.routes.draw do
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

  resources :printing_prices, only: [:index, :show, :create, :update, :new]

  resources :kit_books do
    resources :items
  end
   # Registrar o controller search
   resources :search, controller: 'search', stimulus: './search_controller'
end
