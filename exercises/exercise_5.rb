require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Exercise 5: Calculations

# Calculate the total revenue for the entire company (all stores) using Active Record's .sum calculation method.
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue for the Company: $#{total_revenue}"

# Calculate the average annual revenue for all stores.
average_annual_revenue = Store.average(:annual_revenue)
puts "Average Annual Revenue for All Stores: $#{average_annual_revenue}"

# Calculate the number of stores that are generating $1M or more in annual sales.
high_revenue_stores_count = Store.where('annual_revenue >= ?', 1000000).count
puts "Number of Stores Generating $1M or More in Annual Sales: #{high_revenue_stores_count}"
