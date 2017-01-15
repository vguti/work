class Playlist < ActiveRecord::Base
	has_and_belongs_to_many :songs
	has_many :songs, through: playlist_songs
end
