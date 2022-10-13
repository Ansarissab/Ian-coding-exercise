require 'rails_helper'

RSpec.describe "employments/new", type: :view do
  before(:each) do
    assign(:employment, Employment.new(
      employer: "MyString",
      user: nil
    ))
  end

  it "renders new employment form" do
    render

    assert_select "form[action=?][method=?]", employments_path, "post" do

      assert_select "input[name=?]", "employment[employer]"

      assert_select "input[name=?]", "employment[user_id]"
    end
  end
end
