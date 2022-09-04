Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'devise/sessions' }

  root 'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :articles do
  get 'user/:user_id', to: 'articles#from_author', on: :collection

    resources :comments
  end

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'sign_in', to: 'articles#index'
    get 'sign_up', to: 'devise/registrations#new'
  end
  get '/articles', to: 'static_pages#home'
  resources :relationships,       only: [:create, :destroy]
  
end
