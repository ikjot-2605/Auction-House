class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :starting_bid
      t.date :deadline
      t.integer :contact
      
      t.timestamps
    end
  end
end