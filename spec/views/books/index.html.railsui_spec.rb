require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "MyText",
        ISBN: "Isbn",
        published: false,
        author: nil
      ),
      Book.create!(
        title: "MyText",
        ISBN: "Isbn",
        published: false,
        author: nil
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Isbn".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
