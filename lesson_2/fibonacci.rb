fib_arr = [0, 1]
=begin
num = 1
loop do
  num >= 100 ? break : fib_arr << num
  num += fib_arr[-2]
end
=end
while (result = fib_arr[-1] + fib_arr[-2]) < 100
  fib_arr << result
end
print fib_arr
