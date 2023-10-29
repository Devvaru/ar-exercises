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

puts "Enter store name: "
@store_name = gets.chomp

add_store = Store.create(:name => @store_name, :mens_apparel => true, :womens_apparel => false, :annual_revenue => 240000)

# For testing, uncomment: 
# add_store = Store.create(:name => @store_name)

unless add_store.save
  puts "Error: "
  add_store.errors.full_messages.each do |message|
      puts message
  end
end