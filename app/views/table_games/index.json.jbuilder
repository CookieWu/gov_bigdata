json.array!(@table_games) do |table_game|
  json.extract! table_game, :id, :name, :description, :suitable_persons, :price_min, :price_max, :recommendation
  json.url table_game_url(table_game, format: :json)
end
