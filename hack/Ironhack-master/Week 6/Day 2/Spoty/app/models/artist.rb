class Artist < ActiveRecord::Base
	has_many :song
	has_many :albums
end
