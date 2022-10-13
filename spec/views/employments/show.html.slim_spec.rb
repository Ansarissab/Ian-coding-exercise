require 'rails_helper'

RSpec.describe "employments/show", type: :view do
  before(:each) do
    assign(:employment, Employment.create!(
      employer: "Employer",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Employer/)
    expect(rendered).to match(//)
  end
end
