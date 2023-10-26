require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Exercise 1: Create 3 stores
# Use Active Record's create class method multiple times to create 3 stores in the database:
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Use the count method to count the number of stores
number_of_stores = Store.count

# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
puts "Number of stores in the database: #{number_of_stores}"

# Use the all method to retrieve all stores
all_stores = Store.all

puts
all_stores.each do |store|
  puts "#{store.name} - Annual Revenue: #{store.annual_revenue}"
end








