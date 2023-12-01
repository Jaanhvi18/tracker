class AddGalleryToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :gallery, null: true, foreign_key: true
  end
end
