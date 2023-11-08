class Post < ApplicationRecord
    has_many :reviews

    belongs_to :entertainment
end
