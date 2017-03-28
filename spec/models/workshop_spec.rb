require 'rails_helper'

RSpec.describe Workshop, type: :model do

describe "association" do
    let (:event) { create :event }
    it "should work with an associated event" do
      workshop = event.workshops.new(name: "Test")
      expect(workshop.event).to eq(event)
    end
  end
end
