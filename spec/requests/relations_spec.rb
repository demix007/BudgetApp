require 'rails_helper'

RSpec.describe "Relations", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/relations/new"
      expect(response).to have_http_status(:success)
    end
  end

end
