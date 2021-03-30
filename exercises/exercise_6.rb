require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

class Store < ActiveRecord::Base
  has_many :employees
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "K", last_name: "V", hourly_rate: 60)
@store1.employees.create(first_name: "m", last_name: "i", hourly_rate: 600)
@store1.employees.create(first_name: "Km", last_name: "Vi", hourly_rate: 50)

@store2.employees.create(first_name: "A", last_name: "Foo", hourly_rate: 60)
@store2.employees.create(first_name: "B", last_name: "Bar", hourly_rate: 70)
@store2.employees.create(first_name: "C", last_name: "Baz", hourly_rate: 80)
@store2.employees.create(first_name: "D", last_name: "Qux", hourly_rate: 90)

