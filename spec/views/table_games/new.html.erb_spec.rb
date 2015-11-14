require 'rails_helper'

RSpec.describe "table_games/new", type: :view do
  before(:each) do
    assign(:table_game, TableGame.new(
      :name => "MyString",
      :description => "MyString",
      :suitable_persons => 1,
      :price_min => 1,
      :price_max => 1,
      :recommendation => 1
    ))
  end

  it "renders new table_game form" do
    render

    assert_select "form[action=?][method=?]", table_games_path, "post" do

      assert_select "input#table_game_name[name=?]", "table_game[name]"

      assert_select "input#table_game_description[name=?]", "table_game[description]"

      assert_select "input#table_game_suitable_persons[name=?]", "table_game[suitable_persons]"

      assert_select "input#table_game_price_min[name=?]", "table_game[price_min]"

      assert_select "input#table_game_price_max[name=?]", "table_game[price_max]"

      assert_select "input#table_game_recommendation[name=?]", "table_game[recommendation]"
    end
  end
end
