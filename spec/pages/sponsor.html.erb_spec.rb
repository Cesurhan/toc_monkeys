require 'rails_helper'

 RSpec.describe "pages/sponsor.html.erb",  type: :view do

     it "Should render top banner section" do
       render "shared/top_banner.html.erb"

       expect(rendered).to have_content("Taste of Code")
     end
   end
