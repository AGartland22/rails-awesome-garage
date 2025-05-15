puts "Cleaning database..."

Car.destroy_all
Owner.destroy_all

puts "Creating owners..."
alex = Owner.create!(nickname: "big_al" )
dave = Owner.create!(nickname: "big_dave")

puts "Creating cars..."

Car.create!(brand: "Ferrari", model: "Testarossa", year: 1995, fuel: "Unleaded petrol", owner: alex)
Car.create!(brand: "Mercedes", model: "300SL Roadster", year:1987, fuel: "Diesel", owner: dave)
Car.create!(brand: "Suzuki", model: "Alto", year:2014, fuel: "Unleaded petrol", owner: alex)
Car.create!(brand: "Ford", model: "Foucs", year:2013, fuel: "Unleaded petrol", owner: dave)

puts "Done! #{Owner.count} owners and #{Car.count} cars created"
