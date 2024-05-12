require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        CNPJ: "Cnpj",
        name: "MyText"
      ),
      Supplier.create!(
        CNPJ: "Cnpj",
        name: "MyText"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    assert_select "tr>td", text: "Cnpj".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
