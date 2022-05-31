class Shop < ApplicationRecord
  has_many :shop_menus
  has_many :shop_photos
end
