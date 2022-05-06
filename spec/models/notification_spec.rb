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
      notification.source_app = nil
      expect(notification).to_not be_valid
    end

    it 'requires the phone attribute to contain a string of integers' do
      notification = FactoryGirl.build_stubbed(:notification)
      notification.phone = "notavalidnumber"
      expect(notification).to_not be_valid
    end

    it 'requires the phone attribute to only have 10 characters' do
      @notification.phone = "12345678901"
      expect(@notification).to_not be_valid
    end
  end
end