class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :main_photo_path
      t.text :overview

      t.timestamps
    end
  end
end
