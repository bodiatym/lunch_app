Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: 'registrations' }

  root 'pages#home'

  get '/home' => 'pages#home'

  namespace :users do
    resource :profile, only: [:show, :update, :edit]
  end

  resources :menus, only: [:index] do
    resources :orders, only: [:create, :new]
  end



end
