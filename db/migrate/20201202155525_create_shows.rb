class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :ratingLevel

      t.timestamps
    end
  end
end
