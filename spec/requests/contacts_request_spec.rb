require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  let!(:user) { create(:user) }

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/contacts.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    let!(:contact) {create(:contact, user: user)}

    it "returns http success" do
      get "/api/v1/contacts/1.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/contacts.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/contacts.json"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/contacts.json"
      expect(response).to have_http_status(:success)
    end
  end

end
