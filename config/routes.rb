Rails.application.routes.draw do
  get 'pages/show'
  get 'home/show'

  resources :pages

  devise_for :users
  devise_for :communities
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


root 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
