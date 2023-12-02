# frozen_string_literal: true

class Gallery < ApplicationRecord
  # Assuming each gallery has many posts
  has_many :posts
  # Ensure the gallery has a minimum number of posts
  validate :minimum_post_count

  validate :diverse_post_categories
  # validation method

  private

  def minimum_post_count
    minimum_required = 5 # placeholder minimum
    return unless posts.size < minimum_required

    errors.add(:posts, "must have at least #{minimum_required} posts")
  end

  # If you want to ensure that the gallery contains posts from different categories

  def diverse_post_categories
    categories = posts.map { |post| post_category(post) }.uniq
    return unless categories.size < 2 # Example: require at least two different types of posts

    errors.add(:posts, 'must include at least two different types of categories (movie, game, show)')
  end

  def post_category(post)
    return 'movie' if post.movie.present?
    return 'game' if post.game.present?

    'show' if post.show.present?
  end
end
