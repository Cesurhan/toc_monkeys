require 'rails_helper'

RSpec.describe "pages/incompany.html.erb",  type: :view do

    it "Should render choose your course section" do
      render "shared/choose_your_course.html.erb"

      response.should render_template(partial: '_choose_your_course.html.erb')

    end
  end
