# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :contacts do
    get 'autocomplete', on: :collection
  end

  post '/groups', to: 'groups#create'

  get '/dashboard', to: 'dashboard#index'

  get 'dashboard/index'
  
  get 'home/index'

  root 'home#index'
end
