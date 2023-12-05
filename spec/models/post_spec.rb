# frozen_string_literal: true
require 'rails_helper'
RSpec.describe Post, type: :model do
  context 'checking creation of post' do
    it 'should have correct description' do
      p = Post.new(description: 'Movie 1')
      p1 = Post.new(description: 'Movie 2')
      p2 = Post.new(description: 'Movie 3')
      expect(p.description).to eq('Movie 1')
      expect(p1.description).to eq('Movie 2')
      expect(p2.description).to eq('Movie 3')
    end
  end
  context 'when media_type is movie' do
    let(:user) { create(:user) }
    it 'creates a post with associated movie' do
      post = Post.new(description: 'Movie 1', user: user)
      post.save_with_media('movie', 'Inception')
      expect(post).to be_persisted
    end
  end
  context 'build associated media' do
    it 'should build associated movie' do
      p1 = Post.new(description: 'Movie 1')
      p1.build_associated_media('movie', 'Inception')
      expect(p1.movie).to be_a(Movie)
      expect(p1.movie.name).to eq('Inception')
    end
    it 'should build associated game' do
      p1 = Post.new(description: 'Game 1')
      p1.build_associated_media('game', 'Minecraft')
      expect(p1.game).to be_a(Game)
      expect(p1.game.name).to eq('Minecraft')
    end
    it 'should build associated show' do
      p1 = Post.new(description: 'Show 1')
      p1.build_associated_media('show', 'The Walking Dead')
      expect(p1.show).to be_a(Show)
      expect(p1.show.name).to eq('The Walking Dead')
    end
  end
  context 'get media_type_name' do
    it 'returns movie name if movie is present' do
      p1 = Post.new(description: 'Movie 1')
      p1.movie = build(:movie, name: 'Inception')
      expect(p1.media_type_name).to eq('Inception')
    end
    it 'returns game name if game is present' do
      p1 = Post.new(description: 'Game 1')
      p1.game = build(:game, name: 'Minecraft')
      expect(p1.media_type_name).to eq('Minecraft')
    end
    it 'returns show name if show is present' do
      p1 = Post.new(description: 'Show 1')
      p1.show = build(:show, name: 'The Walking Dead')
      expect(p1.media_type_name).to eq('The Walking Dead')
    end
    it 'returns default value when no media type is associated' do
      post = Post.new
      expect(post.media_type_name).to eq('None')
    end
  end
end