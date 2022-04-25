FactoryBot.define do
  factory :notification do
    phone { "MyString" }
    body { "MyText" }
    source_app { "MyString" }
  end
end
