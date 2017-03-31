require 'rails_helper'

RSpec.describe Workshop, type: :model do
  describe "association" do
    let(:sponsor) { create :sponsor }
    let(:event1) { create :event, sponsor: sponsor }

    it "should work with an associated event" do
      workshop = event1.workshop.new(title: "Test")
      expect(workshop.event).to eq(event)
    end
  end
end
