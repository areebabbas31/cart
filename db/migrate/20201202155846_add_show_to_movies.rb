class AddShowToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :show, null: false, foreign_key: true
  end
end
