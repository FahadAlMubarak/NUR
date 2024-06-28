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
# db/seeds.rb


Product.destroy_all
ProductCategory.destroy_all

# Create or find the categories
ring_category = ProductCategory.find_or_create_by!(name: "Ring")
necklace_category = ProductCategory.find_or_create_by!(name: "Necklace")
earrings_category = ProductCategory.find_or_create_by!(name: "Earrings")

# Optional: Remove the Example Category if it exists
example_category = ProductCategory.find_by(name: "Example Category")
example_category.destroy if example_category
# Create sample products for each category
5.times do |i|
  Product.create!(
    name: "Ring Product #{i+1}",
    price: rand(10..100),
    description: "This is ring product #{i+1}. It's a great ring!",
    product_category_id: ring_category.id
  )
end

5.times do |i|
  Product.create!(
    name: "Necklace Product #{i+1}",
    price: rand(10..100),
    description: "This is necklace product #{i+1}. It's a great necklace!",
    product_category_id: necklace_category.id
  )
end
