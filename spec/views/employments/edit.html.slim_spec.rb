require 'rails_helper'

RSpec.describe "employments/edit", type: :view do
  let(:employment) {
    Employment.create!(
      employer: "MyString",
      user: nil
    )
  }

  before(:each) do
    assign(:employment, employment)
  end

  it "renders the edit employment form" do
    render

    assert_select "form[action=?][method=?]", employment_path(employment), "post" do

      assert_select "input[name=?]", "employment[employer]"

      assert_select "input[name=?]", "employment[user_id]"
    end
  end
end
