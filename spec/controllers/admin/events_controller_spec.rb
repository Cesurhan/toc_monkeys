require 'rails_helper'

RSpec.describe Admin::EventsController, type: :controller do
  describe "GET views Admin::EventsController" do
   it "gets the :index view" do
      get :index
      expect(response).to have_http_status(:success)
   end
 end
end
