class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
