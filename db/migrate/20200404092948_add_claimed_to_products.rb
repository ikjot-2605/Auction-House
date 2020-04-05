class AddClaimedToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :claimed, :boolean
  end
end
