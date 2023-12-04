class Game < ApplicationRecord
    has_many :posts
    validates :name , presence: true

    attr_accessor :name
end
