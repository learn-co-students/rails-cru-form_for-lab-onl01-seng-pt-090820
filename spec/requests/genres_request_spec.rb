require 'rails_helper'

RSpec.describe "Genres", type: :request do

  describe "GET /resources" do
    it "returns http success" do
      get "/genres/resources"
      expect(response).to have_http_status(:success)
    end
  end

end
