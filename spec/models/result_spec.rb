require "rails_helper"

RSpec.describe Result, type: :model do
  describe "#enqueued_by_host" do
    it "responds" do
      r = Result.new
      expect(r).to respond_to(:enqueued_by_host)
    end
  end

  describe "#run_on_host" do
    it "responds" do
      r = Result.new
      expect(r).to respond_to(:run_on_host)
    end
  end
end
