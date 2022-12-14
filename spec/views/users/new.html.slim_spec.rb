require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      firstname: "MyString",
      lastname: "MyString",
      nickname: "MyString",
      email: "MyString",
      phone: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[firstname]"

      assert_select "input[name=?]", "user[lastname]"

      assert_select "input[name=?]", "user[nickname]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[phone]"
    end
  end
end
