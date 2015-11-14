require 'rails_helper'

RSpec.describe "TableGames", type: :request do
  describe "GET /table_games" do
    it "works! (now write some real specs)" do
      get table_games_path
      expect(response).to have_http_status(200)
    end
  end
end
