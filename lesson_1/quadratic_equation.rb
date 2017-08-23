print "Введите 3 коэффициента(a b с): "
a, b, c = gets.chomp.split(" ").map { |s| s.to_i }

d = Math.sqrt(b) - 4 * a * c
if d > 0
	c = Math.sqrt(d)
	puts "D = #{d}, x1 = #{(-1 * b + c) / (2 * a)}, x2 = #{(-1 * b - c) / (2 * a)}"
elsif d == 0
	puts "D = 0, x1 = x2 = #{(-1 * b) / (2 * a)}"
else
	puts "D = #{d} Корней нет"
end