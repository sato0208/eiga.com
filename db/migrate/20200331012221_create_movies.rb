class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :body
      t.text :cast
      t.string :director
      t.date :release

      t.timestamps
    end
  end
end
