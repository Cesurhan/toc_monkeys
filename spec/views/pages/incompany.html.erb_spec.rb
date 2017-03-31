require 'rails_helper'
RSpec.describe "pages/incompany.html.erb",  type: :view do

      it "Should render choose your course section" do
        render 
        expect(render).to have_text("Choose your course")
      end
    end
