class Barbecue < ActiveRecord::Base
  validates :title, presence: true
  validates :venue, presence: true
  validates :date, presence: true
  has_and_belongs_to_many :users

  def current_user_attending
  	# make sure that a user can attend twice to the same BBQ
  	if self.user.id
  end
end
