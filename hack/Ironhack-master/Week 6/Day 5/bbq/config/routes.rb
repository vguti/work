Rails.application.routes.draw do
  devise_for :users, path: '',
  	path_names: { sign_in: 'login'}
  get '/users/:id', to: 'users#show'

  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]

  namespace :api do
    get '/barbecues/:id', to: 'barbecues#show_bbq'
  	post '/barbecues/:id/join', to: 'barbecues#join'
  end


end
