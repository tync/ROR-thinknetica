bag = Hash.new
sum_purchases = 0

loop do
  print "Введите название товара: "
  name = gets.chomp

  break if name == "стоп"

  print "Введите цену: "
  price = gets.chomp.to_f

  print "Введите количество: "
  number = gets.chomp.to_f

  bag[name] = {price => number}
  sum_purchases += price * number
end

bag.each do |k, v|
  v.each do |a, b|
    puts "#{k}: #{a} * #{b} = #{a * b}"
  end
end

puts "Итоговая сумма покупок: #{sum_purchases}"
