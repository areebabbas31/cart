class AddMovieToShow < ActiveRecord::Migration[6.0]
  def change
    add_reference :shows, :movie, null: true, foreign_key: true
  end
end
