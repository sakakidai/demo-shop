class CreateShopMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_menus do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
