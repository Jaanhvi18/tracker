# frozen_string_literal: true

class Show < ApplicationRecord
  has_many :posts
  validates :name, presence: true
end
