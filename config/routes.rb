Rails.application.routes.draw do
  resources :pans
  root 'pages#index'

  get 'process' => 'pages#process'
  get 'about'   => 'pages#about'
  get 'help'    => 'pages#help'
  get 'wiki'    => 'pages#wiki'

  resources :adinkra_symbols
  resources :adinkras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#hello'
  
end
