Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: 'registrations' }

  root 'pages#home'

  get '/home' => 'pages#home'
  get '/dashboard' => 'pages#dashboard'

  namespace :users do
    resources :profiles, only: [:show, :update, :edit]
  end

  resources :menus, only: [:show]

end
