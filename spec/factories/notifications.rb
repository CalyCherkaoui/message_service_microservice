FactoryBot.define do
  factory :notification do
    phone { "123-123-1234" }
    body { "My Message" }
    source_app { "some_app" }
  end

  factory :notification2 do
    phone { "123-123-1234" }
    body { "My Message notif 2" }
    source_app { "some_app" }
  end
end
