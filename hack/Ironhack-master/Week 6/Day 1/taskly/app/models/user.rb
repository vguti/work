class User < ActiveRecord::Base
	has_many :tasks, dependent: :destroy

	def as_json(options={})
		super(
			only: [:id, :name, :email],
			methods: [:task_count],
			include: [tasks: {only: [:id, :name]}]
		)
	end

	def task_count
		self.tasks.count
	end
end
