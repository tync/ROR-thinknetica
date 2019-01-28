fib_arr = [0, 1]
num = 1
loop do
  num >= 100 ? break : fib_arr << num
  num += fib_arr[-2]
end
