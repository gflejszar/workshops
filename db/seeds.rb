# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

admins = ["bob"]
users = ["john", "ed", "luc", "gus"]

admins.each do |admin|
  User.create(email: "#{admin}@example.com", firstname: "#{admin}", lastname: "admin", password: "topsecret", password_confirmation: "topsecret", admin: true)
end

users.each do |user|
  User.create(email: "#{user}@example.com", firstname: "#{user}", lastname: "user", password: "topsecret", password_confirmation: "topsecret")
end

for i in 1..5
  category = Category.create(name: "Category#{i}")
  for j in 1..5
    product = Product.create(title: "Product#{j}", description: lorem_ipsum, price: 12.34, category: category)
    User.all.each do |user|
      Review.create(content: lorem_ipsum, rating: j, product: product, user: user)
    end
  end
end

