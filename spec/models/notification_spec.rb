require 'rails_helper'

RSpec.describe Notification, type: :model do
  describe 'creation' do
    it 'can be created' do
      notification = FactoryBot.create(:notification)
      expect(notification).to be_valid
    end
  end
end