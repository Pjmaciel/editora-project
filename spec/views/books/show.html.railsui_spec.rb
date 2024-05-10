require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyText",
      ISBN: "Isbn",
      published: false,
      author: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
