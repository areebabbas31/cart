class RemoveMovieIdFromShows < ActiveRecord::Migration[6.0]
  def change
    remove_column :shows, :movie_id, :string
  end
end
