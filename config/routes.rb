Rails.application.routes.draw do

  resources :users
  get 'main_page/index'
  root 'main_page#index'

  resources :main_page
end