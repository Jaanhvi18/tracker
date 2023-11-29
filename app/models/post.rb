class Post < ApplicationRecord
    belongs_to :movie, optional: true
    belongs_to :game, optional: true
    belongs_to :show, optional: true
    belongs_to :user
    has_many :comments
    validate :at_least_one_association # doesn't need all foreign keys present 

    # belongs_to :gallery ??? if we do the medis typer scopes


# if we are interested in retrieving Post records associated with a Gallery based on certain criteria, such as the media_type. To support this functionality, you would not necessarily need to change the Gallery model itself but rather ensure that the Post model supports these kinds of queries, which could be done through scopes.
    # scope :by_media_type, ->(media_type) { where(media_type: media_type) }

    attr_accessor :stars

    private
    def at_least_one_association
      unless movie_id.present? || game_id.present? || show_id.present?
        errors.add(:base, "At least one association (movie, game, or show) is required")
      end
    end
  end