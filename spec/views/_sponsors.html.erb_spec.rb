require 'rails_helper'

describe "shared/sponsors.html.erb", type: :view do

  it "contains Attend text" do
    render 'shared/sponsors.html.erb'
    expect(rendered).to have_content("Proudly")
  end

  it "contains Incompany text" do
    render 'shared/sponsors.html.erb'
    expect(rendered).to have_content("Proudly")
  end

  it "contains Sponsor text" do
    render 'shared/sponsors.html.erb'
    expect(rendered).to have_content("Proudly")
  end


end
