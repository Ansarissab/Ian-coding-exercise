require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  let(:user) {
    User.create!(
      firstname: "MyString",
      lastname: "MyString",
      nickname: "MyString",
      email: "MyString",
      phone: "MyString"
    )
  }

  before(:each) do
    assign(:user, user)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(user), "post" do

      assert_select "input[name=?]", "user[firstname]"

      assert_select "input[name=?]", "user[lastname]"

      assert_select "input[name=?]", "user[nickname]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[phone]"
    end
  end
end
