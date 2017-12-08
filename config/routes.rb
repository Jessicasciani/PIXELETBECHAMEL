Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/quisontelles', to: 'pages#qui'
  get '/prestations', to: 'pages#prestations'
  get '/portfolio', to: 'pages#portfolio'
  get '/studio', to: 'pages#studio'
  get '/contact', to: 'pages#contact'
end
