require 'rails_helper'

RSpec.describe "entertainments/show", type: :view do
  before(:each) do
    @entertainment = assign(:entertainment, Entertainment.create!(
      title: "Title",
      description: "MyText",
      genre: "MyText",
      entertainment_type: "Entertainment Type",
      post: nil,
      review: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Entertainment Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
