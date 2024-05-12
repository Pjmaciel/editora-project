require 'rails_helper'

RSpec.describe "suppliers/new", type: :view do
  before(:each) do
    assign(:supplier, Supplier.new(
      CNPJ: "MyString",
      name: "MyText"
    ))
  end

  it "renders new supplier form" do
    render

    assert_select "form[action=?][method=?]", suppliers_path, "post" do

      assert_select "input[name=?]", "supplier[CNPJ]"

      assert_select "textarea[name=?]", "supplier[name]"
    end
  end
end
