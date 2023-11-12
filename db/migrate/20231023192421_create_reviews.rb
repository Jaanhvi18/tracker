class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.datetime :published
      t.string :timestamps
      t.references :entertainment
      t.references :post

      t.timestamps
    end
  end
end
