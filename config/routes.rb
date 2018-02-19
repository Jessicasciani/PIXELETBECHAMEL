Rails.application.routes.draw do
  devise_for :users
  root to: 'photo_homes#index'
  get '/equipe', to: 'pages#equipe'
  get '/prestations', to: 'pages#prestations'
  get '/portfolio', to: 'pages#portfolio'
  get '/studio', to: 'pages#studio'
  get '/contact', to: 'pages#contact'
  get 'prestations/recettes', to: 'pages#recettes'
  get 'prestations/produits', to: 'pages#produits'
  get 'prestations/stopmotions', to: 'pages#stopmotion'
  get 'prestations/pack', to: 'pages#packnav'
  resources :portfolio_photos
  resources :portfolio_motions
  resources :photo_homes
  resources :articles
  # post '/portfolio_photos', to: 'portfolio_photos#create'
  # delete '/portfolio_photos/:id', to: 'portfolio_photos#destroy'
  # get '/portfolio_photos', to: 'pages#portfolio_photo'
end

