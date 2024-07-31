require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/home/index"
      data = JSON.parse(response.body)

      expect(response).to have_http_status(:success)
      expect(data['message']).to eql 'The API is working!'
    end
  end
end
