class AddColumnToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_user_id, :integer
  end
end
