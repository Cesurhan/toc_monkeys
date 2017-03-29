require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "associations" do
    let(:workshop) { create :workshop }
    let(:sponsor) { create :sponsor }

    it "belongs to a sponsor" do
      event1 = sponsor.events.new(title: "cool", workshop: workshop)
      expect(event1.sponsor).to eq(sponsor)
    end

    it "belongs to a workshop" do
      event2 = workshop.events.new(title: "cool", sponsor: sponsor)
      expect(event2.workshop).to eq(workshop)
    end
  end
end
