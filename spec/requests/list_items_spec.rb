require 'rails_helper'

RSpec.describe "ListItems", :type => :request do
  describe "GET /list_items" do
    it "works! (now write some real specs)" do
      get list_items_path
      expect(response.status).to be(200)
    end
  end
end
