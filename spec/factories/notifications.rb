FactoryBot.define do
  factory :notification do
    phone { "123-123-1234" }
    body { "My Message" }
    source_app { "some_app" }
  end

  factory :secobd_notification do
    phone { "123-123-1234" }
    body { "My Message notif 2" }
    source_app { "some_app" }
  end
end
