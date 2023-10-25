require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.where(:id => 1).load
@store2 = Store.where(:id => 2).load

@store1.update(:name => 1)