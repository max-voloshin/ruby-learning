require File.expand_path(File.dirname(__FILE__) + '/helper')

# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

limit = 1000
first = 3
second = 5

# value for prevent duplicate multiples
helper = first * second

first_count = (limit - 1).div(first) + 1
second_count = (limit - 1).div(second) + 1
helper_count = (limit - 1).div(helper) + 1

first_sum = ProjectEulerHelper.sum_arithmetic_progression(0, first, first_count)
second_sum = ProjectEulerHelper.sum_arithmetic_progression(0, second, second_count)
helper_sum = ProjectEulerHelper.sum_arithmetic_progression(0, helper, helper_count)

clever_result = first_sum + second_sum - helper_sum

# checks that clever way gives same result as stupid way
stupid_result = (0...limit).select{ |x| x % first == 0 or x % second == 0 }.inject(:+)

puts "Stupid result = #{stupid_result}"
puts "Clever result = #{clever_result}"