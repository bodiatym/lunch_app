Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, controllers: { registrations: 'registrations' }

  root 'pages#home'

  get '/home' => 'pages#home'

  namespace :users do
    resources :profiles, only: [:index, :show, :create, :update]
  end

end
