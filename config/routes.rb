Rails.application.routes.draw do

  get 'contacts/index'
  resources :contacts

  root 'contacts#index'
end
