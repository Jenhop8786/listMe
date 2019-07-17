# frozen_string_literal: true

Rails.application.routes.draw do

  get 'dashboard/index'
  get 'home/index'
  devise_for :users
  resources :contacts do
    get 'autocomplete', on: :collection
  end

  post '/groups', to: 'groups#create'

  get '/dashboard', to: 'dashboard#index'

  root 'home#index'
end
