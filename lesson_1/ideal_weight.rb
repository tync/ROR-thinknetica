print "Как вас зовут? "
name = gets.chomp
name.capitalize!

print "Какой у вас рост? "
weight = gets.chomp.to_i
ideal_weight = weight - 110
if ideal_weight  >= 0
	puts "#{name} ваш идеальный вес: #{ideal_weight}"
else
	puts "#{name} Ваш вес уже оптимальный"
end

