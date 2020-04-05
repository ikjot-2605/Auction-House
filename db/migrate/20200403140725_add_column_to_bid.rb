class AddColumnToBid < ActiveRecord::Migration[6.0]
  def change
    add_column :bids, :product_deadline, :date
    
  end
end
