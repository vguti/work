class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
	end

	def show
		id = params[:id]
		@project =  Project.find_by(id: id)
		unless @project
			render 'project_not_found'
		end
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description]
		)

		if @project.save
			redirect_to "/projects/#{@project.id}"
		else
			render 'new'
		end
	end
end
