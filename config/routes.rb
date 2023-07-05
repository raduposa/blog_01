Rails.application.routes.draw do
  
  root "pages#home"
  get '/about', to: 'pages#about', as: 'about'

  resources :articles
end
