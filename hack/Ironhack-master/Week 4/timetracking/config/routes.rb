Rails.application.routes.draw do
  get '/', to: 'site#home'

  get '/about', to: 'site#about'

  get 'say_name/:name', to: 'site#say_name'

  get '/calculator', to: 'site#calculator'

  post '/calculate', to: 'site#calculate'



  # Resource routing allows you to quickly declare all of the common routes for a given resourceful controller. Instead of declaring separate routes for your index, show, new, edit, create, update and destroy actions, a resourceful route declares them in a single line of code.

  resources :projects, only: [:index, :show, :new, :create] do
    resources :time_entries, except: [:show]
  end

  # get '/projects', to: 'projects#index'
  # get '/projects/new', to: 'projects#new'
  # get '/projects/:id', to: 'projects#show'
  # post '/projects', to: 'projects#create'
  # get '/projects/:project_id/time_entries', to: 'time_entries#index'
  # get '/projects/:project_id/time_entries/new', to: 'time_entries#new'
  
  # post '/projects/:project_id/time_entries',
  #   to: 'time_entries#create',
  #   as: :project_time_entries

  # get '/projects/:project_id/time_entries/:id/edit',
  #   to: 'time_entries#edit',
  #   as: :edit_project_time_entry

  # patch '/projects/:project_id/time_entries/:id',
  #   to: 'time_entries#update',
  #   as: :project_time_entry

  # delete '/projects/:project_id/time_entries/:id',
  #   to: 'time_entries#destroy',
  #   as: :delete_project_time_entry

end
