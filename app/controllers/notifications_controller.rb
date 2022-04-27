class NotificationsController < ApplicationController
  def create
    Notification.create(params.permit(:phone, :body, :source_app))
  end
end
