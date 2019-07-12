Rails.application.routes.draw do

  get 'contacts/index', as: 'contacts'
  get 'contacts/new', as: 'new_contact'
  post '/contacts/create'
  #resources :contacts

  root 'contacts#index'
end
