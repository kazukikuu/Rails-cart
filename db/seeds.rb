10.times do |n|
  Product.create!(
      name:  "商品#{n + 1}",
      price: rand(500..15000)
  )
end

User.create(
    email: "kuu@seian.jp",
    password: "password",
    name: "kazuki",
    address: "神奈川県川崎市宮前区1-1-1"
)
