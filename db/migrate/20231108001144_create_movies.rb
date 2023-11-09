class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name , null: false
      t.date :release_date
      t.text :description
      t.time :duration
      t.string :language
      t.string :director

      t.timestamps
    end
  end
end
