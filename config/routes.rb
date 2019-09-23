Rails.application.routes.draw do

  resources :users
  get 'main_page/index'
  root 'main_page#index'

  post 'main_page/createSpisok'
  post 'main_page/createEmail'

  resources :main_page
end