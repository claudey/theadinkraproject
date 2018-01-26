Rails.application.routes.draw do
  resources :pans
  root 'pages#index'

  get 'process' => 'pages#process'
  get 'about'   => 'pages#about'
  get 'help'    => 'pages#help'
  get 'wiki'    => 'pages#wiki'

  resources :adinkra_symbols
  
  root 'application#hello'
end
