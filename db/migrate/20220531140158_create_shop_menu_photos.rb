class CreateShopMenuPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_menu_photos do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :shop_menu, null: false, foreign_key: true
      t.string :photo_path

      t.timestamps
    end
  end
end
