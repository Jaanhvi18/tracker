# frozen_string_literal: true

class CreateGalleries < ActiveRecord::Migration[7.1]
  def change
    create_table :galleries, &:timestamps
  end
end
