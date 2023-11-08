require 'rails_helper'

RSpec.describe "entertainments/edit", type: :view do
  before(:each) do
    @entertainment = assign(:entertainment, Entertainment.create!(
      title: "MyString",
      description: "MyText",
      genre: "MyText",
      entertainment_type: "MyString",
      post: nil,
      review: nil
    ))
  end

  it "renders the edit entertainment form" do
    render

    assert_select "form[action=?][method=?]", entertainment_path(@entertainment), "post" do

      assert_select "input[name=?]", "entertainment[title]"

      assert_select "textarea[name=?]", "entertainment[description]"

      assert_select "textarea[name=?]", "entertainment[genre]"

      assert_select "input[name=?]", "entertainment[entertainment_type]"

      assert_select "input[name=?]", "entertainment[post_id]"

      assert_select "input[name=?]", "entertainment[review_id]"
    end
  end
end
