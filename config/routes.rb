Rails.application.routes.draw do

  resources :users
  get 'main_page/index'
  root 'main_page#index'

  post 'main_page/createSpisok'
  post 'main_page/createEmail'
  post 'main_page/deleteEmail'

  resources :main_page
end