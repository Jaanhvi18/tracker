# frozen_string_literal: true

class CreateDashboards < ActiveRecord::Migration[7.1]
  def change
    create_table :dashboards do |t|
      t.string :name

      t.timestamps
    end
  end
end
