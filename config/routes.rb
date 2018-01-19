Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/about'

  get 'pages/help'

  get 'pages/wiki'

  resources :adinkra_symbols
  resources :adinkras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#hello'
  
end
