require 'rails_helper'


describe "shared/upcoming_events.html.erb", type: :view do

  it "contains Attend text" do
    render 'shared/upcoming_events.html.erb'
    expect(rendered).to have_content("Upcoming Events")
  end

end

require 'rails_helper'

describe "shared/_upcoming_events.html.erb" do
    it "renders event" do
      render
      expect(rendered).to have_content event.name
    end
  end
