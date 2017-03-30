require 'rails_helper'

RSpec.describe "pages/attend.html.erb",  type: :view do

    it "Should render what you will learn section" do
      render "shared/what_you_will_learn.html.erb"

      expect(rendered).to have_content("What You Will Learn")
    end
  end
