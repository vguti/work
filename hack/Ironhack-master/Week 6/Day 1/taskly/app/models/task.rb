class Task < ActiveRecord::Base
	belongs_to :user

	def as_json(options={})
		super(except: [:user_id, :created_at, :updated_at])
	end

	def complete!
		self.completed = true
		self.save
	end
end