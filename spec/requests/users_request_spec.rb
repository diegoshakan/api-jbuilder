require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/users.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    let!(:user) { create(:user) }

    it "returns http success" do
      get "/api/v1/users/1.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/users.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/users.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/users.json"
      expect(response).to have_http_status(:success)
    end
  end

end
