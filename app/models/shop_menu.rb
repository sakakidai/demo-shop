class ShopMenu < ApplicationRecord
  belongs_to :shop
  has_many :shop_menu_photos
end
