Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'pages/home', to: 'pages#home'
  get '/about', to: 'pages#about'

  get '/workshops/:id', to: 'catalog_items#show', as: 'catalog_item'
  get '/workshops', to: 'catalog_items#index'

  resources :worshops

end
