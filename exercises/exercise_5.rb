require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@sum = Store.sum('annual_revenue')
@count = Store.count
@average_annual_revenue = @sum / @count
puts @average_annual_revenue

@revenue_million_or_more = Store.where('annual_revenue >= ?', 1000000).size
puts @revenue_million_or_more
