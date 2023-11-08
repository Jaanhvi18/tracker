class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.datetime :published
      t.string :timestamps
      t.text :description
      t.timestamps
      t.references :entertainment
    end
  end
end
