require 'rails_helper'

RSpec.describe "shared/sponsors.html.erb", type: :view do

  it "contains Attend text" do
    render 'shared/sponsors.html.erb'
    expect(rendered).to have_content("Proudly")
  end

end
