# frozen_string_literal: true

Rails.application.routes.draw do
  get 'contacts/index', as: 'contacts'
  get 'contacts/new', as: 'new_contact'
  post 'contacts/create', as: 'create_contact'
  get 'contacts/:id/edit', to: 'contacts#edit', as: 'edit_contact'

  delete 'contacts/:id/destroy', to: 'contacts#destroy', as: 'destroy_contact'
  patch 'contacts/:id/update', to: 'contacts#update', as: 'update_contact'
  # resources :contacts

  root 'contacts#index'
end
