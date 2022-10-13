require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    assign(:user, User.create!(
      firstname: "Firstname",
      lastname: "Lastname",
      nickname: "Nickname",
      email: "Email",
      phone: "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Nickname/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
