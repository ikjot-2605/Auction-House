class AddCUserIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :cuser_id, :integer
  end
end
