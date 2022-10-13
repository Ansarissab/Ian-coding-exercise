require 'rails_helper'

RSpec.describe "employments/index", type: :view do
  before(:each) do
    assign(:employments, [
      Employment.create!(
        employer: "Employer",
        user: nil
      ),
      Employment.create!(
        employer: "Employer",
        user: nil
      )
    ])
  end

  it "renders a list of employments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Employer".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
