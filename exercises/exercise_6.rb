require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 50)
@store1.employees.create(first_name: "Gandalf", last_name: "theGrey", hourly_rate: 100)

@store2.employees.create(first_name: "Tomato", last_name: "Basil", hourly_rate: 46)
@store2.employees.create(first_name: "Brick", last_name: "House", hourly_rate: 45)
@store2.employees.create(first_name: "Rain", last_name: "River", hourly_rate: 120)