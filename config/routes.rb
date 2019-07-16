# frozen_string_literal: true

Rails.application.routes.draw do

  resources :contacts do
    get 'autocomplete', on: :collection
  end

  root 'contacts#index'
end
