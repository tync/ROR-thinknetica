print "Введите дату (dd.mm.year): "
day, month, year = gets.chomp.split(".").map { |e| e.to_i }

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
  months[1] += 1
end

date_num = day
months[0...month - 1].each { |month| date_num += month }
puts date_num