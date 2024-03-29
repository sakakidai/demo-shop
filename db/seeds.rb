# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  shop = Shop.create!(
    name: Faker::Restaurant.name, 
    main_photo_path: Faker::LoremFlickr.image(size: '320x240', search_terms: ['restaurant']), 
    overview: Faker::Lorem.paragraphs.join("\n")
  )
  rand(0..5).times do
    shop.shop_photos.create!(
      photo_path: Faker::LoremFlickr.image(size: '300x300', search_terms: ['cat'])
    )
  end
  rand(1..5).times do
    shop.shop_menus.create!(
      name: Faker::Food.dish, 
      price: Faker::Number.number(digits: 2)
    )
  end
  rand(0..5).times do
    shop.shop_menus.each do |shop_menu|
      shop_menu.shop_menu_photos.create!(
        shop_id: shop.id,
        photo_path: Faker::LoremFlickr.image(size: '300x300', search_terms: ['meal'])
      )
    end
  end
end
