# frozen_string_literal: true


# spec/views/profiles/show.html.erb_spec.rb
RSpec.describe "profiles/show.html.erb", type: :view do
  it "displays the profile details" do
    user = create(:user)
    profile = create(:profile, user: user)

    # Create posts using the factory
    game_post = create(:post, :with_game, user: user)
    movie_post = create(:post, :with_movie, user: user)
    show_post = create(:post, :with_show, user: user)

    posts = [game_post, movie_post, show_post]

    assign(:user, user)
    assign(:posts, posts)

    render  'profiles/show'  # Corrected render call



    expect(rendered).to include("Hi, #{user.email.split('@').first}!")

    # Check for bio content
    expect(rendered).to include(profile.bio)

    # Check for posts content
    posts.each do |post|
      expect(rendered).to include(post.description)
      expect(rendered).to include(post.media_type_name)
    end
  end
end
