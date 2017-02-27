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


Product.create!([title: "人类简史",
                 description: "尤瓦尔·赫拉利",
                 quantity: rand(1..10*10),
                 price: "41.11",])

Group.create!([title: "《好好学习》精进组",
               description: "成甲",
               user_id: 1])

Post.create!([title: "临界知识",
              content: "那些能让你升级的知识",
              group_id: 1,
              user_id: 1, ])

Group.create!([title: "《好好说话》实践组",
               description: "马东",
               user_id: 2])

Post.create!([title: "你会好好说话吗？",
              content: "你试试你怎么知道",
              group_id: 2,
              user_id: 2, ])
