fib_arr = [0, 1]
i = 0
sum = fib_arr[i] + fib_arr[i + 1]
while sum < 100
  fib_arr << sum
  i += 1
  sum = fib_arr[i] + fib_arr[i + 1]
end
