class CreateHomes < ActiveRecord::Migration[7.1]
  def change
    create_table :homes do |t|

      t.timestamps
    end
  end
end
