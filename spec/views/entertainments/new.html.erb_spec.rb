require 'rails_helper'

RSpec.describe "entertainments/new", type: :view do
  before(:each) do
    assign(:entertainment, Entertainment.new(
      title: "MyString",
      description: "MyText",
      genre: "MyText",
      entertainment_type: "MyString",
      post: nil,
      review: nil
    ))
  end

  it "renders new entertainment form" do
    render

    assert_select "form[action=?][method=?]", entertainments_path, "post" do

      assert_select "input[name=?]", "entertainment[title]"

      assert_select "textarea[name=?]", "entertainment[description]"

      assert_select "textarea[name=?]", "entertainment[genre]"

      assert_select "input[name=?]", "entertainment[entertainment_type]"

      assert_select "input[name=?]", "entertainment[post_id]"

      assert_select "input[name=?]", "entertainment[review_id]"
    end
  end
end
