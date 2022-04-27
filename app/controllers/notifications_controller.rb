class NotificationsController < ApplicationController
  def create
    @notification = Notification.create(params.permit(:phone, :body, :source_app))
  end
end
