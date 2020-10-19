class Item < ApplicationRecord
    has_one_attached :avatar
    has_many :cart_items
end
