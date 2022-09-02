Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'sign_in', to: 'articles#index'
    get 'sign_up', to: 'devise/registrations#new'

  end
  devise_for :users, controllers: { sessions: 'devise/sessions' }
end
