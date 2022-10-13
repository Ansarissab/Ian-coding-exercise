FactoryBot.define do
  factory :employment do
    employer { "MyString" }
    start_date { "2022-10-13" }
    end_date { "2022-10-13" }
    user { nil }
  end
end
