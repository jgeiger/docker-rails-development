require 'rails_helper'

RSpec.feature "Dashboards", type: :feature, js: true do
  describe "#index" do
    it "has the correct text" do
      visit "/"
      expect(page).to have_css(".navbar-brand", text: "Rails Docker Demo")
    end
  end
end
