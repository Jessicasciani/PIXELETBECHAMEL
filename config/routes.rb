Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/equipe', to: 'pages#equipe'
  get '/prestations', to: 'pages#prestations'
  get '/portfolio', to: 'pages#portfolio'
  get '/studio', to: 'pages#studio'
  get '/contact', to: 'pages#contact'
  get 'prestations/recettes', to: 'pages#recettes'
  get 'prestations/produits', to: 'pages#produits'
  get 'prestations/stopmotion', to: 'pages#stopmotion'
  get 'prestations/pack', to: 'pages#packnav'
end
