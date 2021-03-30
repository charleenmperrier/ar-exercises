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
class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, :inclusion => {:in => (40..200)}
  has_one :store
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

print "enter a new store name: "
store_name = gets.chomp

make_new_store = Store.new
make_new_store.name = store_name

if make_new_store.valid?
  make_new_store.save
else
  puts make_new_store.errors.full_messages
end