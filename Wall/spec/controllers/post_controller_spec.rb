require 'rails_helper'

RSpec.describe PostController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #usernew" do
    it "returns http success" do
      get :usernew
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #usercreate" do
    it "returns http success" do
      get :usercreate
      expect(response).to have_http_status(:success)
    end
  end

end
