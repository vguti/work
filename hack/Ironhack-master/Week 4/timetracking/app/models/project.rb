class Project < ActiveRecord::Base
	has_many :time_entries
	validates :name, presence: true
	validates :name, format: { with: /\[a-zA-Z]/}

	def self.clean_old
		where('created_at <?', Date.today - 1.week).destroy_all
	end
end