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
u.email = "jkland927@gmail.com"
u.password = '112233'
u.password_confirmation = "112233"
u.is_admin = true
u.save

u = User.new
u.email = "irischen6688@163.com"
u.password = '123456'
u.password_confirmation = "123456"
u.is_admin = true
u.save

<<<<<<< HEAD
=======

Product.create!(title: "人类简史",
                 description: "尤瓦尔·赫拉利",
                 quantity: rand(1..10*10),
                 price: "41.11")

Photo.create!(product_id: 1,
              avatar: open("https://ww1.sinaimg.cn/large/006tNbRwly1fdb1d6j44jj30fv0fvju8.jpg"))



              Product.create!(title: "未来简史",
                               description: "尤瓦尔·赫拉利",
                               quantity: rand(1..10*10),
                               price: "51.00")

              Photo.create!(product_id: 2,
                            avatar: open("https://ww1.sinaimg.cn/large/006tNbRwly1fdb1d5b0kaj319e19ex10.jpg"))

                            Product.create!(title: "把时间当作朋友",
                                             description: "李笑来",
                                             quantity: rand(1..10*10),
                                             price: "38.99")

                            Photo.create!(product_id: 3,
                                          avatar: open("https://ww4.sinaimg.cn/large/006tNbRwgy1fdc9cb6ncmj30dw0dwmyx.jpg"))

                                          Product.create!(title: "好好说话",
                                                           description: "马东",
                                                           quantity: rand(1..10*10),
                                                           price: "34.00")

                                          Photo.create!(product_id: 4,
                                                        avatar: open("https://ww2.sinaimg.cn/large/006tNbRwgy1fdc9cawoe3j31kw1kw1ky.jpg"))

                                                        Product.create!(title: "好好学习",
                                                                         description: "成甲",
                                                                         quantity: rand(1..10*10),
                                                                         price: "33.22")

                                                        Photo.create!(product_id: 5,
                                                                      avatar: open("https://ww3.sinaimg.cn/large/006tNbRwgy1fdc9c73fvxj30dw0dwgm9.jpg"))

                                                                      Product.create!(title: "细节",
                                                                                       description: "如何影响一个人",
                                                                                       quantity: rand(1..10*10),
                                                                                       price: "49.99")

                                                                      Photo.create!(product_id: 6,
                                                                                    avatar: open("https://ww2.sinaimg.cn/large/006tNbRwgy1fdc9c14k7bj31kw1kw4fp.jpg"))

                                                                                    Product.create!(title: "精进",
                                                                                                     description: "采铜",
                                                                                                     quantity: rand(1..10*10),
                                                                                                     price: "31.2")

                                                                                    Photo.create!(product_id: 7,
                                                                                                  avatar: open("https://ww3.sinaimg.cn/large/006tNbRwgy1fdc9c31heoj315k15k46j.jpg"))

                                                                                                  Product.create!(title: "经济学原理",
                                                                                                                   description: "曼昆，北京大学出版社",
                                                                                                                   quantity: rand(1..10*10),
                                                                                                                   price: "89.6")

                                                                                                  Photo.create!(product_id: 8,
                                                                                                                avatar: open("https://ww2.sinaimg.cn/large/006tNbRwgy1fdc9c6o44jj31dm1dmu0x.jpg"))

                                                                                                                Product.create!(title: "浪潮之巅",
                                                                                                                                 description: "吴军",
                                                                                                                                 quantity: rand(1..10*10),
                                                                                                                                 price: "72.4")

                                                                                                                Photo.create!(product_id: 9,
                                                                                                                              avatar: open("https://ww4.sinaimg.cn/large/006tNbRwgy1fdc9c23g19j30qg0qg493.jpg"))

                                                                                                                              Product.create!(title: "马化腾",
                                                                                                                                               description: "吴晓波",
                                                                                                                                               quantity: rand(1..10*10),
                                                                                                                                               price: "69.9")

                                                                                                                              Photo.create!(product_id: 10,
                                                                                                                                            avatar: open("https://ww4.sinaimg.cn/large/006tNbRwgy1fdc9c1kff8j30m80m8t9w.jpg"))
>>>>>>> master
#产生
Group.create!([title: "好好学习精进组",
               description: "成甲",
               user_id: 1])

Group.create!([title: "好好说话实践组",
              description: "马东",
              user_id: 1])

Post.create!([title: "临界知识",
              content: "那些能让你升级的知识",
              group_id: 1,
              user_id: 1, ])

create_posts = for i in 1..50 do
  Post.create!([title: "Post no.#{i}",
                content: "这是用seed建立的第 #{i} 篇文章",
                group_id: rand(1..2),
                user_id: rand(1..2)])
end

Post.create!([title: "你会好好说话吗？",
              content: "你试试你怎么知道",
              group_id: 2,
              user_id: 2, ])

Exbook.create!(title: "人类简史",
               description: "一本神书",
               quantity: rand(1..5),
               booktype: "历史&人文",
               image: open("https://ww1.sinaimg.cn/large/006tNbRwly1fdb1d6j44jj30fv0fvju8.jpg"))

               Exbook.create!(title: "把时间当作朋友",
                              description: "一本更新认知的书",
                              quantity: rand(1..5),
                              booktype: "个人成长",
                              image: open("https://ww4.sinaimg.cn/large/006tNbRwgy1fdc9cb6ncmj30dw0dwmyx.jpg"))

                              Exbook.create!(title: "好好学习",
                                             description: "一本神书",
                                             quantity: rand(1..5),
                                             booktype: "个人精进指南",
                                             image: open("https://ww3.sinaimg.cn/large/006tNbRwgy1fdc9c73fvxj30dw0dwgm9.jpg"))

                                             Exbook.create!(title: "精进",
                                                            description: "知乎大神的作品",
                                                            quantity: rand(1..5),
                                                            booktype: "成长指南",
                                                            image: open("https://ww3.sinaimg.cn/large/006tNbRwgy1fdc9c31heoj315k15k46j.jpg"))

                                                            Exbook.create!(title: "经济学原理",
                                                                           description: "经济学经典著作",
                                                                           quantity: rand(1..5),
                                                                           booktype: "经济学入门级书",
                                                                           image: open("https://ww2.sinaimg.cn/large/006tNbRwgy1fdc9c6o44jj31dm1dmu0x.jpg"))
