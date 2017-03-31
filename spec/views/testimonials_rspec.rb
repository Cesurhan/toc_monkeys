require 'rails_helper'

RSpec.describe "pages/attend.html.erb",  type: :view do

  it "Testimonials section contains text" do
    render "shared/_testimonials.html.erb"
    expect(rendered).to have_content("What people say about TOC")
  end
end
