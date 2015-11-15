class CreateAnimalInfors < ActiveRecord::Migration
  def change
    create_table :animal_infors do |t|
      
      t.integer :animal_id
      t.string :Name
      t.string :Sex
      t.string :Type
      t.string :Age
      t.string :Variety
      
      t.string :Reason
      
      t.boolean :IsSterilization
      
      t.string :Resettlement
      t.string :Phone
      t.string :Email
      
      t.string :ImageName
      

      t.timestamps null: false
    end
  end
end
