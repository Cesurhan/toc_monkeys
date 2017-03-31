require 'rails_helper'

RSpec.describe "shared/newsletter.html.erb", type: :view do

  it "contains Join our newsletter" do
    render 'shared/newsletter.html.erb'
    expect(rendered).to have_content("Join our newsletter")
  end

end
