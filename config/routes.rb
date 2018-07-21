Rails.application.routes.draw do
  root 'pages#index'
  resources :adinkra_symbols, :path => "symbols"

  get 'process'   => 'pages#process'
  get 'about'     => 'pages#about'
  get 'help'      => 'pages#help'
  get 'wiki'      => 'pages#wiki'
  get 'adinkra'   => 'adinkra_symbols#index'


end
