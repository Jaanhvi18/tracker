# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
a = User.find_or_create_by!(email: 'alexadmin@example.com') do |user|
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
  end
  
b = User.find_or_create_by!(email: 'bobadmin@example.com') do |user|
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
  end
  
c = User.find_or_create_by!(email: 'caseyadmin@example.com') do |user|
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
  end

  movie_name = "FNAF"
movie = Movie.find_or_create_by!(name: movie_name) do |m|
  m.release_date = Date.today # Placeholder date
  m.description = "Sample description"
  m.duration = 120 # Placeholder duration
  m.language = "English"
  m.director = "Sample Director"
end

if movie.persisted?
  puts "Movie created or found: #{movie.name}"
else
  puts "Failed to create or find movie with name: #{movie_name}"
end
  
  # Create a post
  post = Post.new(
    user: a,
    stars: 3,
    description: 'lowkey kinda mid',
    movie: movie
  )
  post.save!