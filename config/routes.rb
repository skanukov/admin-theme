# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  namespace :admin do
    root 'home#index'
    get 'home/index'
  end

  root 'pages#index'
  get 'pages/index'

  devise_for :users
end
