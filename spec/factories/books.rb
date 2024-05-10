FactoryBot.define do
  factory :book do
    title { "MyText" }
    ISBN { "MyString" }
    published { false }
    author { nil }
  end
end
