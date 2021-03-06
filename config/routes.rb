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
  get 'cgu', to: 'pages#cgu'


  resources :folders, :path => 'photos' do
    resources :portfolio_photos
  end

  resources :video_folders, :path => 'videos' do
    resources :portfolio_motions, :path => 'portfolio_videos'
  end


  resources :photo_homes, :path => 'home'
  resources :articles, :path => 'actualites'
  # post '/portfolio_photos', to: 'portfolio_photos#create'
  # delete '/portfolio_photos/:id', to: 'portfolio_photos#destroy'
  # get '/portfolio_photos', to: 'pages#portfolio_photo'
end

