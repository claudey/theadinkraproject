Rails.application.routes.draw do
  root 'pages#index'
  # resources :adinkra_symbols, :path => "symbols"
  resources :adinkra_symbols, :path => "symbols", param: :short_url
  # get '/symbols/:short_url' => "stories#show"

  get 'process'   => 'pages#process'
  get 'about'     => 'pages#about'
  get 'help'      => 'pages#help'
  get 'wiki'      => 'pages#wiki'
  get 'adinkra'   => 'adinkra_symbols#index'

end
