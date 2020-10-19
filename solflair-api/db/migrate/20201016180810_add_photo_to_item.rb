class AddPhotoToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :photo, :string
  end
end
