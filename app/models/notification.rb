class Notification < ApplicationRecord
  validates_presence_of :phone, :body, :source_app
  validates_numericality_of :phone
end
