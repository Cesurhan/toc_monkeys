require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET views PagesController" do

   it "gets the :homepage view" do
      get :homepage
      expect(response).to have_http_status(:success)
   end

   it "gets the :sponsor view" do
      get :sponsor
      expect(response).to have_http_status(:success)
   end

   it "gets the :incompany view" do
      get :incompany
      expect(response).to have_http_status(:success)
    end

   it "gets the :public view" do
      get :public
      expect(response).to have_http_status(:success)
   end
  end
end
