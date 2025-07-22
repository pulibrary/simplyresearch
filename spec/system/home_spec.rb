# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Home user interface" do
  describe "GET /" do
    before do
      visit "/"
    end

    it "renders the index page" do
      expect(page).to have_content("SimplyResearch")
    end

    it "does something else" do
      # Anything within the `before` block will be executed before each example in this context
    end
  end
end
