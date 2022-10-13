require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        firstname: "Firstname",
        lastname: "Lastname",
        nickname: "Nickname",
        email: "Email",
        phone: "Phone"
      ),
      User.create!(
        firstname: "Firstname",
        lastname: "Lastname",
        nickname: "Nickname",
        email: "Email",
        phone: "Phone"
      )
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Firstname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Lastname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Nickname".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone".to_s), count: 2
  end
end
