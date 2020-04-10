class AddMovieImageIdToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :movie_image_id, :string
  end
end
