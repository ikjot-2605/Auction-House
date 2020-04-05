class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.string :user_email
      t.decimal :bid_value
      
      
      t.timestamps
    end
    
    add_index :bids, :product_id
  end
end
