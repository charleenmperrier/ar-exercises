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
@store1.employees.create(first_name: "K", last_name: "V", hourly_rate: 6)
@store1.employees.create(first_name: "m", last_name: "i", hourly_rate: 600)
@store1.employees.create(first_name: "Km", last_name: "Vi", hourly_rate: 50)


@store2.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 50)
@store2.employees.create(first_name: "Kh", last_name: "Vii", hourly_rate: 50)
@store2.employees.create(first_name: "am", last_name: "ni", hourly_rate: 60)
@store2.employees.create(first_name: "Krram", last_name: "Viri", hourly_rate: 60)

