class CreateEntertainments < ActiveRecord::Migration[7.1]
  def change
    create_table :entertainments do |t|
      t.string :title
      t.text :description
      t.date :release_date
      t.text :genre
      t.string :entertainment_type

      t.timestamps
    end
  end
end
