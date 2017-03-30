require 'rails_helper'

RSpec.describe "pages/attend.html.erb",  type: :view do

    it "Should render get ready for day section" do
      render "shared/get_ready_for_day.html.erb"

      expect(rendered).to have_content("Get Ready for the Day")
    end
  end
