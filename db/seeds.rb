# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'

CSV.foreach(Rails.root.join('db/seed_data/categories.csv'), headers: true) do |row|
  Category.find_or_create_by(name: row['name'])
end

CSV.foreach(Rails.root.join('db/seed_data/items.csv'), headers: true) do |row|
  category = Category.find_or_create_by(name: row['category_name'])
  Item.create!({
    name: row['name'],
    description: row['description'],
    price: row['price'].to_f,
    quantity: row['quantity'],
    url: row['url'],
    category: category
  })
end
