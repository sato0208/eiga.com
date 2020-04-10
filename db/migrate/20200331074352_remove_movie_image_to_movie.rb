class RemoveMovieImageToMovie < ActiveRecord::Migration[5.2]
  def change
  	remove_column :movies, :movie_image
  end
end
