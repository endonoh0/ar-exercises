require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Eric", last_name: "Ho", hourly_rate: 50)
@store1.employees.create(first_name: "Jason", last_name: "Borne", hourly_rate: 60)

@store2 = Store.find_by(id: 2)
@store2.employees.create(first_name: "Daniel", last_name: "Mars", hourly_rate: 90)
@store2.employees.create(first_name: "Garrett", last_name: "Sho", hourly_rate: 100)
@store2.employees.create(first_name: "Man", last_name: "Dude", hourly_rate: 200)
