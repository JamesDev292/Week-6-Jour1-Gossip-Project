class CreateCities < ActiveRecord::Migration[7.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :zip_code
      
      t.timestamps
    end
  end
end
