require 'rails_helper'

RSpec.describe "suppliers/edit", type: :view do
  before(:each) do
    @supplier = assign(:supplier, Supplier.create!(
      CNPJ: "MyString",
      name: "MyText"
    ))
  end

  it "renders the edit supplier form" do
    render

    assert_select "form[action=?][method=?]", supplier_path(@supplier), "post" do

      assert_select "input[name=?]", "supplier[CNPJ]"

      assert_select "textarea[name=?]", "supplier[name]"
    end
  end
end
