require 'rails_helper'

RSpec.describe "assemblies/show", type: :view do
  before(:each) do
    @assembly = assign(:assembly, Assembly.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
