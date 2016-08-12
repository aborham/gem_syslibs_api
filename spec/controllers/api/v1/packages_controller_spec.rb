require 'rails_helper'

RSpec.describe Api::V1::PackagesController, type: :controller do

  describe "GET #index" do
    it "returns welcome message" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #search" do
    pending "add some examples to  #{__FILE__}"
    # it "returns packages data and libraries" do
    #   data = {"packages":["nokogiri"],"os":"Linux"}
    #   post :search
    #   expect(response).to have_http_status(:success)
    # end
  end

end
