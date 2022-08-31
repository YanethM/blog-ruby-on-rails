Rails.application.routes.draw do
  root to: 'homes#index'
  resources :articles do
    resources :comments
  end

  devise_scope :user do
    # Redirests signing out users back to sign-in
    get 'sign_in', to: 'devise/registrations#new'
  end
  devise_for :users, controllers: { sessions: 'devise/sessions' }
end
