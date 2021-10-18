Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get '/home' => 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :users do
    resources :profiles
  end

end
