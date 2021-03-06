class Product < ActiveRecord::Base
	belongs_to :user
	has_many :bids
	validates :title, presence: true
	validates :description, presence: true
	validates :deadline, presence: true
end
