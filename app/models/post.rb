# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :movie, optional: true
  belongs_to :game, optional: true
  belongs_to :show, optional: true
  belongs_to :user
  has_many :comments

  belongs_to :gallery, optional: true

  # if we are interested in retrieving Post records associated with a Gallery based on certain criteria, such as the media_type. To support this functionality, you would not necessarily need to change the Gallery model itself but rather ensure that the Post model supports these kinds of queries, which could be done through scopes.
  # scope :by_media_type, ->(media_type) { where(media_type: media_type) }

  attr_accessor :stars

  # Handles the creation of an associated media based on the media_type
  def save_with_media(media_type, title)
    build_associated_media(media_type, title)
    save!
  end

  # Builds the associated media object based on the media_type
  def build_associated_media(media_type, title)
    case media_type
    when 'movie'
      build_movie(name: title)
    when 'game'
      build_game(name: title)
    when 'show'
      build_show(name: title)
    end
  end

  def media_type_name
    return movie.name if movie.present?
    return game.name if game.present?
    return show.name if show.present?
    'None' # or some default value if no media type is associated
  end
end
