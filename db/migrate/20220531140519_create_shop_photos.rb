class CreateShopPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :shop_photos do |t|
      t.references :shop, null: false, foreign_key: true
      t.string :photo_path
      t.text :comment
      t.boolean :is_published

      t.timestamps
    end
  end
end
