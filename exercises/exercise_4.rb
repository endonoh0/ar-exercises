require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create do |s|
    s.name = "Surrey",
    s.annual_revenue = 224000,
    s.mens_apparel = false,
    s.womens_apparel = true
end

Whistler = Store.create do |s|
    s.name = "Whistler",
    s.annual_revenue = 19000000,
    s.mens_apparel = true,
    s.womens_apparel = false
end

Yaletown = Store.create do |s|
    s.name = "Yaletown",
    s.annual_revenue = 430000,
    s.mens_apparel = true,
    s.womens_apparel = true
end

@mens_store = Store.where(mens_apparel: true)
@mens_store.each {|store| puts store.name, store.annual_revenue}

@womens_store = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
@womens_store.each {|store| puts store.name, store.annual_revenue}
