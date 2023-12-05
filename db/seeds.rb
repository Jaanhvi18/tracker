# frozen_string_literal: true
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

show_name = "Attack on Titan"
show = Show.find_or_create_by!(name: show_name) do |s|
  s.release_date = Date.today 
  s.description = "Sample description"
  s.episodes = 20
  s.seasons = 5
  s.director = "Mappa"
end

game_name = "Stray"
game = Game.find_or_create_by!(name: game_name) do |g|
  g.release_date = Date.today
  g.description = "Terrible game"
  g.platform = "PS4"
  g.price = 60.00
end

  # Create a post
  post_movie = Post.new(user: a, description: 'lowkey kinda mid', movie: movie, media_title:movie_name)
  post_movie[:stars] = 4
  post_movie.save!

  post_show= Post.new(user: a, description: 'Amazing show', show: show, media_title:show_name)
  post_show[:stars] = 5
  post_show.save!

  post_game= Post.new(user: a, description: 'Amazing show', game: game, media_title:game_name)
  post_game[:stars] = 2
  post_game.save!

  # Movies
movie_name_b = "Space Odyssey"
movie_b = Movie.find_or_create_by!(name: movie_name_b) do |m|
  m[:release_date] = Date.today
  m.description = "A journey through space"
  m.duration = 140
  m.language = "English"
  m.director = "Fictional Director"
end

# Shows
show_name_b = "The Last Explorer"
show_b = Show.find_or_create_by!(name: show_name_b) do |s|
  s.release_date = Date.today
  s.description = "Exploration and adventure"
  s.episodes = 24
  s.seasons = 3
  s.director = "Imaginary Studio"
end

# Games
game_name_b = "Lost in Time"
game_b = Game.find_or_create_by!(name: game_name_b) do |g|
  g.release_date = Date.today
  g.description = "Time-travel adventure"
  g.platform = "PC"
  g.price = 50.00
end

# Posts for User b
post_movie_b = Post.new(user: b, description: 'Intriguing and deep', movie: movie_b, media_title:movie_name_b)
post_movie_b[:stars] = 5
post_movie_b.save!

post_show_b = Post.new(user: b, description: 'Thrilling narrative', show: show_b, media_title: show_name_b)
post_show_b[:stars] = 3
post_show_b.save!

post_game_b = Post.new(user: b, description: 'Could be better', game: game_b, media_title: game_name_b)
post_game_b[:stars] = 2
post_game_b.save!

# Movies
movie_name_c = "Mystery Island"
movie_c = Movie.find_or_create_by!(name: movie_name_c) do |m|
  m.release_date = Date.today
  m.description = "Island adventure mystery"
  m.duration = 130
  m.language = "French"
  m.director = "Creative Director"
end

# Shows
show_name_c = "Cyber Revolution"
show_c = Show.find_or_create_by!(name: show_name_c) do |s|
  s.release_date = Date.today
  s.description = "Futuristic tech drama"
  s.episodes = 30
  s.seasons = 4
  s.director = "Futuristic Productions"
end

# Games
game_name_c = "Galactic Wars"
game_c = Game.find_or_create_by!(name: game_name_c) do |g|
  g.release_date = Date.today
  g.description = "Space battle and strategy"
  g.platform = "Xbox"
  g.price = 70.00
end

# Posts for User c
post_movie_c = Post.new(user: c, description: 'Absolutely stunning', movie: movie_c, media_title:movie_name_c)
post_movie_c[:stars] = 5
post_movie_c.save!

post_show_c = Post.new(user: c, description: 'Good but lacks depth', show: show_c, media_title:show_name_c)
post_show_c[:stars] = 3
post_show_c.save!

post_game_c = Post.new(user: c, description: 'Engaging gameplay', game: game_c, media_title:game_name_c)
post_game_c[:stars] = 4
post_game_c.save!


#This is to double check each model was actually made or is in the db
# arr = [a, b, c, movie, show, game, movie_b, show_b, game_b, movie_c, show_c, game_c, post, post_movie_b, post_show_b, post_game_b, post_movie_c, post_show_c, post_game_c]

# arr.each do |model|
#   if model.persisted?
#     puts "Model #{model.class.name} with name #{model.try(:name) || model.try(:email)} created or found"
#   else
#     puts "Failed to create or find model #{model.class.name} with name #{model.try(:name) || model.try(:email)}"
#   end
# end