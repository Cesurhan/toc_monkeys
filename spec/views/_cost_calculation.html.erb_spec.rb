require 'rails_helper'

RSpec.describe "pages/incompany.html.erb",  type: :view do
  it "Should render cost cost calculation section" do
    render "shared/cost_calculation.html.erb"

    expect(rendered).to have_content("Costs Calculation")
  end
end
