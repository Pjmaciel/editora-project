require 'rails_helper'

RSpec.describe "assemblies/new", type: :view do
  before(:each) do
    assign(:assembly, Assembly.new())
  end

  it "renders new assembly form" do
    render

    assert_select "form[action=?][method=?]", assemblies_path, "post" do
    end
  end
end
