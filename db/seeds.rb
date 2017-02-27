# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u = User.new
u.email = "jkland927@hotmail.com"
u.password = '112233'
u.password_confirmation = "112233"
u.is_admin = true
u.save

u = User.new
u.email = "cyj@test.com"
u.password = '123456'
u.password_confirmation = "123456"
u.is_admin = true
u.save

create_products = for i in 1..10 do
  Product.create!([title: "Book no.#{i}",
                   description: "這是用種子建立的第 #{i} 個商品",
                   price: rand(19.99..99.99),
                   quantity: rand(1..10)*10])
end
puts "10 Product books created."

Product.create!([title: "人类简史",
                 description: "尤瓦尔·赫拉利",
                 quantity: rand(1..10*10),
                 price: "41.11",])
