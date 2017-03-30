require 'rails_helper'

RSpec.describe "Render workshops" do
  let(:workshop1) { create :workshop, title: "Cool Workshop" }


  it "shows workshop" do

    expect(workshop1).to include("Cool Workshop")

  end
end
