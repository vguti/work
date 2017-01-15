Rails.application.routes.draw do
  
  resources :users do
  end

  resources :products, only: [:index, :show, :new, :create, :destroy] do
  end

end
