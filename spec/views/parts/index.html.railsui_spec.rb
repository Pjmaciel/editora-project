require 'rails_helper'

RSpec.describe "parts/index", type: :view do
  before(:each) do
    assign(:parts, [
      Part.create!(),
      Part.create!()
    ])
  end

  it "renders a list of parts" do
    render
  end
end
