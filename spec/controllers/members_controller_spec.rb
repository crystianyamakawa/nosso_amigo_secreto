require 'rails_helper'

RSpec.describe MembersController, type: :controller do

  describe "GET #create" do
    it "returns Json success" do
      request.env["HTTP_ACCEPT"] = 'application/json'

      @member = create(:member)
        get :create
      expect(response).to have_http_status(:success)
    end
  end


  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update
      expect(response).to have_http_status(:success)
    end
  end

end
