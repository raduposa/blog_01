Rails.application.routes.draw do
  resources :articles
  root "pages#home"
  get '/about', to: 'pages#about', as: 'about'

  
end
