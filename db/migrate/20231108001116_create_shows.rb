# frozen_string_literal: true

class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.date :release_date
      t.text :description
      t.integer :episodes
      t.integer :seasons
      t.string :director
      t.boolean :on_going

      t.timestamps
    end
  end
end
