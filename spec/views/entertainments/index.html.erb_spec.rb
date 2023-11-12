require 'rails_helper'

RSpec.describe "entertainments/index", type: :view do
  before(:each) do
    assign(:entertainments, [
      Entertainment.create!(
        title: "Title",
        description: "MyText",
        genre: "MyText",
        entertainment_type: "Entertainment Type",
        post: nil,
        review: nil
      ),
      Entertainment.create!(
        title: "Title",
        description: "MyText",
        genre: "MyText",
        entertainment_type: "Entertainment Type",
        post: nil,
        review: nil
      )
    ])
  end

  it "renders a list of entertainments" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Entertainment Type".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
