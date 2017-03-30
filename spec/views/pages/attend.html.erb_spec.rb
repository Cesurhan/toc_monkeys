require 'rails_helper'

RSpec.describe "pages/attend.html.erb",  type: :view do

    it "Should render what you will learn section" do
      render 
      expect(rendered).to have_content("What You Will Learn")
    end
  end
