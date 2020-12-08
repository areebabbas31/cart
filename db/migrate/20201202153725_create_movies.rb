class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :release_year
      t.string :rating
      t.string :listed_in

      t.timestamps
    end
  end
end
