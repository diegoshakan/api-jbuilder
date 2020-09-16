require 'rails_helper'

RSpec.describe "Contacts", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/contacts/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/contacts/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/contacts/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/contacts/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/contacts/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
