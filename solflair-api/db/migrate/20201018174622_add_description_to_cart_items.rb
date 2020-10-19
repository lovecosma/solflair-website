class AddDescriptionToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_column :cart_items, :description, :string
  end
end
