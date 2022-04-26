require 'rails_helper'

RSpec.describe Notification, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'creation' do
    it 'can be created' do
      notification = Notification.create(phone: "123-123-1234", body: "My message", source_app: "the_app")
      expect(notification).to be_valid
    end
  end
end
