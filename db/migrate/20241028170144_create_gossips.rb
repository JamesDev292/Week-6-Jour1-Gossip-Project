class CreateGossips < ActiveRecord::Migration[7.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
