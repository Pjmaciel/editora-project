require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyText",
      ISBN: "MyString",
      published: false,
      author: nil
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "textarea[name=?]", "book[title]"

      assert_select "input[name=?]", "book[ISBN]"

      assert_select "input[name=?]", "book[published]"

      assert_select "input[name=?]", "book[author_id]"
    end
  end
end
