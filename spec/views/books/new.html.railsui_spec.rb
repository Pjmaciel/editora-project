require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      title: "MyText",
      ISBN: "MyString",
      published: false,
      author: nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "textarea[name=?]", "book[title]"

      assert_select "input[name=?]", "book[ISBN]"

      assert_select "input[name=?]", "book[published]"

      assert_select "input[name=?]", "book[author_id]"
    end
  end
end
