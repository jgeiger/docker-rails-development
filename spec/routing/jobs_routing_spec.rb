require "rails_helper"

RSpec.describe JobsController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(post: "/jobs").to route_to("jobs#create")
    end
  end
end
