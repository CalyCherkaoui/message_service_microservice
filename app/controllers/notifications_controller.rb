class NotificationsController < ApplicationController
  def create
    @notification = Notification.create(params.permit(:phone, :body, :source_app))

    respond_to do |format|
      format.json {
        render action: 'show', status: :created, location: @notification
      }
    end

  end

  def show
  end

  private

    def notification_params
      params.permit(:phone, :body, :source_app)
    end

end

