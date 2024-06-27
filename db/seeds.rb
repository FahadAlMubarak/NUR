# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create a single ProductCategory record
# Create a single ProductCategory record
product_category = ProductCategory.create!(name: "Example Category")

5.times do |i|
  Product.create!(
    name: "Product #{i+1}",
    price: rand(10..100),
    description: "This is product #{i+1}. It's a great product!",
    product_category_id: product_category.id
  )
end
