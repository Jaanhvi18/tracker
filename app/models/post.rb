class Post < ApplicationRecord
    belongs_to :movie, optional: true
    belongs_to :game, optional: true
    belongs_to :show, optional: true
    belongs_to :user
    has_many :comments
    validate :at_least_one_association # doesn't need all foreign keys present 







    private
    def at_least_one_association
      unless movie_id.present? || game_id.present? || show_id.present?
        errors.add(:base, "At least one association (movie, game, or show) is required")
      end
    end
  end