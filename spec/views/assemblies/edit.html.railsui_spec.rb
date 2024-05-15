require 'rails_helper'

RSpec.describe "assemblies/edit", type: :view do
  before(:each) do
    @assembly = assign(:assembly, Assembly.create!())
  end

  it "renders the edit assembly form" do
    render

    assert_select "form[action=?][method=?]", assembly_path(@assembly), "post" do
    end
  end
end
