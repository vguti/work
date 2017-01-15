class TimeEntriesController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@entries = @project.time_entries
	end

	def new
		@project = Project.find(params[:project_id])
		@entry = @project.time_entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.time_entries.new(entry_params)

		if @entry.save
			redirect_to action: "index", controller: "time_entries",
				project_id: @project.id
		else
				@entries = @project.time_entries
				render "new"
		end
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.time_entries.find params[:id]
	end

	def update
		@project = Project.find_by(id: params[:project_id])
		@entry = @project.time_entries.find_by(id: params[:id])	

		if @entry.update(hours: params[:time_entry][:hours],
				minutes: params[:time_entry][:minutes],
				date: params[:time_entry][:date])

			redirect_to action: "index", controller: "time_entries", project_id: @project.id
		else
			render 'edit'
		end 
	end

	def destroy
		project = Project.find(params[:project_id])
		entry = project.time_entries.find(params[:id])
		entry.destroy
		redirect_to action: :index, project_id: project.id
	end

	private

	def entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date)
	end
end
