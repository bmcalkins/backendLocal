# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Listing.destroy_all
User.destroy_all
Seller.destroy_all


user1 = User.create(username: "bmcalkins", email: "b.raders1013@gmail.com", password_digest: BCrypt::Password.create('Your_Password'), name: "Bradley")


seller1 = Seller.create(username: "eric88", email: "eric88@gmail.com", password_digest: BCrypt::Password.create('Your_Password'), name: "Eric", location: "Berkeley, California")
seller2 = Seller.create(username: "john88", email: "john88@gmail.com", password_digest: BCrypt::Password.create('Your_Password'), name: "John", location: "Burlington, Vermont")
seller4 = Seller.create(username: "ananda88", email: "ananda88@gmail.com", password_digest: BCrypt::Password.create('Your_Password'), name: "Ananda", location: "Purgatory")
seller3 = Seller.create(username: "caetano88", email: "caetano88@gmail.com", password_digest: BCrypt::Password.create('Your_Password'), name: "Caetano", location: "Bend, Oregon")

Listing.create(product_type: "fruit", product_name: "passion fruit", img_url: "https://www.news-medical.net/image.axd?picture=2018%2f3%2fshutterstock_323011952.jpg&ts=20180307121147&ri=673", quantity: 2.25, price: 3.29, User_id: user1.id, Seller_id: seller1.id)
Listing.create(product_type: "vegetable", product_name: "lacinato kale", img_url: "https://cdn11.bigcommerce.com/s-q83qdckkjh/images/stencil/1000x1000/products/425/4385/Lacinato-KaleBC__93750.1601428155.jpg?c=2", quantity: 3.25, price: 1.49, User_id: user1.id, Seller_id: seller2.id)
Listing.create(product_type: "fruit", product_name: "mango", img_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.thespruceeats.com%2Fseafood-mango-stir-fry-recipe-3217600&psig=AOvVaw2vwkw-dExPYzAY3_MysXsT&ust=1605113857040000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIjyjqG5-OwCFQAAAAAdAAAAABAD", quantity: 6.25, price: 4.26, User_id: user1.id, Seller_id: seller1.id)
Listing.create(product_type: "vegetable", product_name: "cucumber", img_url: "https://parkseed.com/images/xxl/52536-pk-p1.jpg?v=101222588323-1", quantity: 6.25, price: 1.29, User_id: user1.id, Seller_id: seller1)
Listing.create(product_type: "fruit", product_name: "apple", img_url: "https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/v1555925874/shape/mentalfloss/640title_0.jpg?itok=YdUZkRX3", quantity: 2.25, price: 1.79, User_id: user1.id, Seller_id: seller3.id)
Listing.create(product_type: "vegetable", product_name: "brussel sprouts", img_url: "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco/k%2Farchive%2F54d978231d0ceb5b6e95ca218bb6254a7d14c00f", quantity: 5.25, price: 1.83, User_id: user1.id, Seller_id: seller2.id)
Listing.create(product_type: "fruit", product_name: "lemon", img_url: "https://cdn.britannica.com/84/188484-050-F27B0049/lemons-tree.jpg", quantity: 7.25, price: 4.34, User_id: user1.id, Seller_id: seller4.id)
Listing.create(product_type: "fruit", product_name: "pomegranate", img_url: "https://www.myjewishlearning.com/wp-content/uploads/2016/09/pomegranate.jpg", quantity: 6.61, price: 8.47, User_id: user1.id, Seller_id: seller4.id)
Listing.create(product_type: "vegetable", product_name: "cilantro", img_url: "https://img.huffingtonpost.com/asset/5936af1219000047003e4b5a.jpeg?ops=scalefit_720_noupscale", quantity: 2.25, price: 4.69, User_id: user1.id, Seller_id: seller1.id)
Listing.create(product_type: "fruit", product_name: "pears", img_url: "https://www.supermarketperimeter.com/ext/resources/pears-jpeg.jpg?t=1562011118&width=1080", quantity: 8.90, price: 7.47, User_id: user1.id, Seller_id: seller3.id)
Listing.create(product_type: "vegetable", product_name: "collard greens", img_url: "https://holcombfarm.org/wp-content/uploads/2017/09/IMG_0846.jpg", quantity: 4.25, price: 4.99, User_id: user1.id, Seller_id: seller1.id)
Listing.create(product_type: "fruit", product_name: "strawberries", img_url: "https://www.almanac.com/sites/default/files/styles/opengraph/public/image_nodes/strawberries-1.jpg?itok=M8pE1nQz", quantity: 6.61, price: 8.47, User_id: user1.id, Seller_id: seller4.id)
Listing.create(product_type: "vegetable", product_name: "arugula", img_url: "https://www.organicfacts.net/wp-content/uploads/arugula01.jpg", quantity: 3.25, price: 5.39, User_id: user1.id, Seller_id: seller1.id)
Listing.create(product_type: "fruit", product_name: "cranberries", img_url: "https://images.everydayhealth.com/images/cranberries-101-about-1440x810.jpg?w=1110", quantity: 3.17, price: 4.20, User_id: user1.id, Seller_id: seller2.id)
Listing.create(product_type: "vegetable", product_name: "radishes", img_url: "https://www.thespruceeats.com/thmb/_5iv7PxpPLxtOzI58YpST5mK9Es=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-994593838-de50e6d7db9a4b328fbfd17f3371dbee.jpg", quantity: 3.25, price: 8.22, User_id: user1.id, Seller_id: seller2.id)
Listing.create(product_type: "fruit", product_name: "blueberries", img_url: "https://s3.amazonaws.com/cdn.gurneys.com/images/800/71749A.jpg", quantity: 2.65, price: 12.43, User_id: user1.id, Seller_id: seller4.id)