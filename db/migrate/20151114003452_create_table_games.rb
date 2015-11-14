class CreateTableGames < ActiveRecord::Migration
  def change
    create_table :table_games do |t|
      t.string :name
      t.string :description
      t.integer :suitable_persons
      t.integer :price_min
      t.integer :price_max
      t.integer :recommendation

      t.timestamps null: false
    end
  end
end
