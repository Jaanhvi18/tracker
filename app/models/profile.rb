class Profile < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one_attached :profile_photo


end
