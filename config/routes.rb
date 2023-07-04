Rails.application.routes.draw do
  root "articles#index"
 get "articles", to: "articles#index"
 resources :articles, only: [:show, :index, :new, :create, :edit, :update]
end
