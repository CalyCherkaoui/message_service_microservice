class Notification < ApplicationRecord
  validates_presence_of :phone, :body, :source_app
end
