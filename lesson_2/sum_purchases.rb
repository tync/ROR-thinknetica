basket = {}
sum_purchases = 0

loop do
  print "Введите название товара: "
  product = gets.chomp

  break if product == "стоп"

  print "Введите цену: "
  price = gets.chomp.to_f

  print "Введите количество: "
  quantity = gets.chomp.to_f

  basket[product] = { price: price, quantity: quantity }
  sum_purchases += price * quantity
end

basket.each do |product, val|
    puts "#{product}: #{val[:price]} * #{val[:quantity]} = #{val[:price] * val[:quantity]}"
end

puts "Итоговая сумма покупок: #{sum_purchases}"
