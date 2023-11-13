class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
      t.date :release_date
      t.text :description
      t.string :platform
      t.string :ESRB_rating
      t.decimal :price

      t.timestamps
    end
  end
end
