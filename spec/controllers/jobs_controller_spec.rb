require 'rails_helper'

RSpec.describe JobsController, type: :controller do
  describe "POST create" do
    describe "with valid params" do
      it "creates a new Job" do
        expect(HostnameJob).to receive(:perform_later)
        post :create, {}
      end
    end
  end
end
