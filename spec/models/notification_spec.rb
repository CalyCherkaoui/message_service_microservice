require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe 'creation' do
    it 'can be created' do
      notification = FactoryBot.build_stubbed(:notification)
      expect(notification).to be_valid
    end
  end

  describe 'validations' do
    it 'can be created if valid' do
      notification = FactoryBot.build_stubbed(:notification)
      notification.phone = nil
      notification.body = nil
      notification.source_app = nill
      expect(notification).to_not be_valid
    end
  end
end