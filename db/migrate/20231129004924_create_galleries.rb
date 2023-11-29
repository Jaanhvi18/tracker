class CreateGalleries < ActiveRecord::Migration[7.1]
  def change
    create_table :galleries do |t|

      t.timestamps
    end
  end
end
