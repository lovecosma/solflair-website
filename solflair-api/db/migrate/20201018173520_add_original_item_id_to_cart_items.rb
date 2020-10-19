class AddOriginalItemIdToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :item_id, :integer
  end
end
