require "rails_helper"

RSpec.describe TableGamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/table_games").to route_to("table_games#index")
    end

    it "routes to #new" do
      expect(:get => "/table_games/new").to route_to("table_games#new")
    end

    it "routes to #show" do
      expect(:get => "/table_games/1").to route_to("table_games#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/table_games/1/edit").to route_to("table_games#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/table_games").to route_to("table_games#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/table_games/1").to route_to("table_games#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/table_games/1").to route_to("table_games#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/table_games/1").to route_to("table_games#destroy", :id => "1")
    end

  end
end
