Rails.application.routes.draw do
  # resources :tasks
  # resources :users - Don't need it we wont be rendering the website

	namespace :api do
		namespace :v1 do
			resources :users, except: [:new, :edit] do
				resources :tasks, except: [:new, :edit]
				put 'tasks/:id/complete', to: 'tasks#complete'
			end
		end
	end
end
