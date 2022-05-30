module Loaders
  class ShopMenusLoader < GraphQL::Batch::Loader
    def perform(shop_ids)
      shop_menus = ShopMenu.where(shop_id: shop_ids)
      shop_menus.group_by(&:shop_id).each do |shop_id, shop_menus|
        fulfill(shop_id, shop_menus)
      end
    end
  end
end