# frozen_string_literal: true

class Movie < ApplicationRecord
  has_many :posts
  validates :name, presence: true

  # attr_accessor :name
end
