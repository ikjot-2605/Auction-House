class AddColumnsToBid < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :product_id, :decimal
    add_column :bids, :product_name, :string
    
    
  end
end
