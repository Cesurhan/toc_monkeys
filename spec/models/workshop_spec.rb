require 'rails_helper'

 RSpec.describe "Create workshops" do
   let(:workshop1) { create :workshop, title: "Cool Workshop" }

   it "creates workshop" do
     expect(workshop1).to include("Cool Workshop")
   end
 end
