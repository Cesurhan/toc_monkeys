require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "association with sponsor" do
    # let(:event) { create :event, sponsor: :sponsor }
    let!(:sponsor) { create :sponsor }

    it "belongs to a sponsor" do
      event1 = sponsor.events.new(title: "cool")
      expect(event1.sponsor).to eq(sponsor)
    end

  end
end
