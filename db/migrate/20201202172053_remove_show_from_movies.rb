class RemoveShowFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_reference :movies, :show, null: false, foreign_key: true
  end
end
