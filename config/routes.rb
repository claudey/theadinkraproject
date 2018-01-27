Rails.application.routes.draw do
  resources :pans
  root 'pages#index'

  get 'process'   => 'pages#process'
  get 'about'     => 'pages#about'
  get 'help'      => 'pages#help'
  get 'wiki'      => 'pages#wiki'
  get 'adinkra'   => 'adinkra_symbols#index'

  resources :adinkra_symbols

end
