class CreateClaims < ActiveRecord::Migration[6.0]
  def change
    create_table :claims do |t|
      t.integer :c_product_id
      t.string :c_product_name
      t.integer :c_bid_forproduct
      

      t.timestamps
    end
  end
end
