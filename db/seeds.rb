# 10.times do |n|
#   Product.create!(
#       name:  "商品#{n + 1}",
#       price: rand(500..15000)
#   )
# end
#
Product.create(
    name:  "タンクトップ",
    price: 3200,
    image: "https://unblast.com/wp-content/uploads/2020/04/Tank-Top-Mockup-1.jpg"
)

Product.create(
    name:  "チョコレート",
    price: 240,
    image: "https://unblast.com/wp-content/uploads/2020/03/Chocolate-Mockup-0.jpg"
)

Product.create(
    name:  "ペン",
    price: 580,
    image: "https://unblast.com/wp-content/uploads/2020/03/Pen-Mockup-5.jpg"
)

Product.create(
    name:  "トレーニングTシャツ",
    price: 3500,
    image: "https://unblast.com/wp-content/uploads/2020/04/Simple-Men-T-shirt-Mockup.jpg"
)

Product.create(
    name:  "コップ",
    price: 980,
    image: "https://unblast.com/wp-content/uploads/2019/02/Mug-Mockup-1.jpg"
)

Product.create(
    name:  "スケートボード",
    price: 19500,
    image: "https://unblast.com/wp-content/uploads/2019/05/Simple-Skateboard-Mockup.jpg"
)

# Product.create(
#     name:  "",
#     price: 580,
#     image: ""
# )










User.create(
    email: "kuu@seian.jp",
    password: "password",
    name: "kazuki",
    address: "神奈川県川崎市宮前区1-1-1"
)
