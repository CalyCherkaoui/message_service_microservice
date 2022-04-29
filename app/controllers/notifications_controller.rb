class NotificationsController < ApplicationController
  def create
    @notification = Notification.new(notification_params)

    respond_to do |format|
      if @notification.save
        format.json {
          render action: 'show', status: :created, location: @notification
        }
      else
        format.json {
          render json: @notification.errors, status: :unprocessable_entity
        }
      end
    end

  end

  def show
  end

  private

    def notification_params
      params.require(:notification).permit(:phone, :body, :source_app)
    end

end

