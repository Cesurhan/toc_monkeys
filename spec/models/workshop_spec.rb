require 'rails_helper'

RSpec.describe Workshop, type: :model do

describe "association" do
    let (:event) { create :event }
    it "should work with an associated event" do
      should_belong_to :events
      workshop.should have(:no).errors_on(:event)
    end
  end
end
