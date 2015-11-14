require 'rails_helper'

RSpec.describe "table_games/index", type: :view do
  before(:each) do
    assign(:table_games, [
      TableGame.create!(
        :name => "Name",
        :description => "Description",
        :suitable_persons => 1,
        :price_min => 2,
        :price_max => 3,
        :recommendation => 4
      ),
      TableGame.create!(
        :name => "Name",
        :description => "Description",
        :suitable_persons => 1,
        :price_min => 2,
        :price_max => 3,
        :recommendation => 4
      )
    ])
  end

  it "renders a list of table_games" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
