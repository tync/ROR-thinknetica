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

months.each { |month, day| puts month if day == 30 }