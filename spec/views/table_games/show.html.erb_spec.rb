require 'rails_helper'

RSpec.describe "table_games/show", type: :view do
  before(:each) do
    @table_game = assign(:table_game, TableGame.create!(
      :name => "Name",
      :description => "Description",
      :suitable_persons => 1,
      :price_min => 2,
      :price_max => 3,
      :recommendation => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
