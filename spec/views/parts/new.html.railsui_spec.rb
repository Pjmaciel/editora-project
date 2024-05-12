require 'rails_helper'

RSpec.describe "parts/new", type: :view do
  before(:each) do
    assign(:part, Part.new())
  end

  it "renders new part form" do
    render

    assert_select "form[action=?][method=?]", parts_path, "post" do
    end
  end
end
