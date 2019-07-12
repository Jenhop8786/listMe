Rails.application.routes.draw do

  get 'contacts/index', as: 'contacts'
  resources :contacts

  root 'contacts#index'
end
