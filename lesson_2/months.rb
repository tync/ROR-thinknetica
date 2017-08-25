months = {
  January: 31,
  Fedruary: 28,
  March: 31,
  April: 30,
  May: 31,
  June: 30,
  July: 31,
  August: 31,
  September: 30,
  October: 31,
  November: 30,
  Decenber: 31
}

months.each do |month, day| 
  if months[month] == 30
      puts month
  end
end