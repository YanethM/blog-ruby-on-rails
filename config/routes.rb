Rails.application.routes.draw do
  #La pag principal de la aplicación depende de index
  root "articles#index"
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"
  resources :articles
end
