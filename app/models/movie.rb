class Movie < ApplicationRecord
	 attachment :movie_image
	 has_many :comments, dependent: :destroy
end
