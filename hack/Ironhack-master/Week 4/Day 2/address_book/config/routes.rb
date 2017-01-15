Rails.application.routes.draw do

  get '/', to: 'site#index'

  get '/new', to: 'contacts#new'

  post '/contacts', to: 'contacts#create'

  get '/contacts', to: 'contacts#index'

  # Iteration #4: Remove the duplicates (unfinished)

end
