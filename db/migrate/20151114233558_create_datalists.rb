class CreateDatalists < ActiveRecord::Migration
  def change
    create_table :datalists do |t|
      
      t.integer :lid
      t.string :title
      t.string :category
      t.datetime :metadata_modified

      t.timestamps null: false
    end
  end
end
