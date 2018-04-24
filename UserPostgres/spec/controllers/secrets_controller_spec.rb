require 'rails_helper'
RSpec.describe SecretsController, type: :controller do
  before do
    @user = create(:user)
    @secret = create(:secret, user: @user)
  end
  context "when not logged in" do
    before do
      session[:user_id] = nil
    end

    it "cannot access index"do
      get :show, id: @user
      expect(response).to redirect_to("/sessions/new")
    end

    it "cannot access create" do
       get :create, id: @user
      expect(response).to redirect_to("/sessions/new")
    end

    it "cannot remove" do
       get :destroy, id: @user
      expect(response).to redirect_to("/sessions/new")
    end
  end
end