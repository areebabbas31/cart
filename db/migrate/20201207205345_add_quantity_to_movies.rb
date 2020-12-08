class AddQuantityToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :quantity, :integer
  end
end
