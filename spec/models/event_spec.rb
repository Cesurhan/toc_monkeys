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

  describe "validations" do
    it "is invalid without a title" do
      event = Event.new(title: "")
      event.valid?
      expect(event.errors).to have_key(:title)
    end

    it "is invalid with a title longer than 30 characters" do
      event = Event.new(title: "a"*31)
      event.valid?
      expect(event.errors).to have_key(:title)
    end

    it "is invalid with spaces_available of less than 0 " do
      event = Event.new(spaces_available: -10)
      event.valid?
      expect(event.errors).to have_key(:spaces_available)
    end

    it "is invalid when spaces_available is not a string " do
      event = Event.new(spaces_available: "awesome")
      event.valid?
      expect(event.errors).to have_key(:spaces_available)
    end

    it "is invalid without a location" do
      event = Event.new(location: "")
      event.valid?
      expect(event.errors).to have_key(:location)
    end
  end
end
