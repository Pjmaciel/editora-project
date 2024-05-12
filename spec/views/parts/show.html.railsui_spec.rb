require 'rails_helper'

RSpec.describe "parts/show", type: :view do
  before(:each) do
    @part = assign(:part, Part.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
