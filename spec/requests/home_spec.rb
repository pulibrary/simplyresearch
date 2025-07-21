require "rails_helper"

RSpec.describe "HomeController", type: :request do
  describe "GET /" do
    it "renders the index page" do
      get "/"

      expect(response).to render_template(:index)
      expect(response.body).to include("SimplyResearch")
    end
  end

  describe "GET /home/about" do
    it "renders the about page" do
      get "/home/about"

      expect(response).to render_template(:about)
      expect(response.body).to include("SimplyResearch")
    end
  end
end
