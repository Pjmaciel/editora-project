require 'rails_helper'

RSpec.describe "assemblies/index", type: :view do
  before(:each) do
    assign(:assemblies, [
      Assembly.create!(),
      Assembly.create!()
    ])
  end

  it "renders a list of assemblies" do
    render
  end
end
