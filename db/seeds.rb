10.times do |n|
  Product.create!(
      name:  "商品#{n + 1}",
      price: rand(500..15000)
  )
end
