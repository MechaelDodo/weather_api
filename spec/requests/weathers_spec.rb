require 'rails_helper'

RSpec.describe "Weathers", type: :request do
  describe "GET /weather/by_time" do
    it "200 ok" do
      FactoryBot.create(:weather, time: Time.at(1621823790).to_datetime)
      get "/weather/by_time", params:{"timestamp": 1621823790}, xhr: true
      expect(response).to have_http_status(200)
    end
    it "404 not found" do
      FactoryBot.create(:weather)
      get "/weather/by_time", params:{"timestamp": 1621823790}, xhr: true
      expect(response).to have_http_status(404)
    end
  end
  describe "GET /health" do
    it "200 ok" do
      get "/health", xhr: true
      expect(response).to have_http_status(200)
    end
  end
end
