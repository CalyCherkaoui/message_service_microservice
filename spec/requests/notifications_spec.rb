require 'rails_helper'

RSpec.describe "Notifications", type: :request do
  it "create a notification" do
    headers = {
      "ACCEPT" => "application/json",
      "Content-Type" => "application/json"
    }

    post "/notifications", 
    :params => {
      :notification => {
        :phone => "123-123-1234",
        :body => "Message",
        :source_app => "app_name"
      }
    }, :headers => headers
    
    # expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:created)
  end

  it "renders an error status if the notification was not created" do
    headers = {
      "ACCEPT" => "application/json",
      "Content-Type" => "application/json"
    }

    post "/notifications", 
    :params => {
      :notification => {
        :phone => "123-123-1234",
        :body => "Message",
      }
    }, :headers => headers
    
    expect(response.content_type).to eq("application/json")
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
