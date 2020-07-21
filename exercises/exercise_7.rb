require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Name a store."
store_name = gets.chomp
@chosen_store = Store.create(name: store_name, mens_apparel: false)

if @chosen_store.errors.any?
    @chosen_store.errors.messages.each {|err| puts err}
end
