class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.datetime :published
      t.string :timestamps
      t.text :description
      t.integer :stars
      
      t.references :movie
      t.references :show
      t.references :game
      t.references :user, null: false , foreign_key: true

      t.timestamps
    end
  end
end
