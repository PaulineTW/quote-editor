# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# puts "\n== Seeding the database with fixtures =="
# system("bin/rails db:fixtures:load")

puts 'Delete companies'
Company.destroy_all
puts 'Delete users'
User.destroy_all
puts 'Delete quotes'
Quote.destroy_all
puts "======================"

puts "\n== Seeding the database with seed.rb =="

puts 'Creating 2 fakes companies'
companies = Company.create([{ name: "HandiHand" }, { name: "Helpery" }])
puts '2 companies created!'
puts "======================"
puts"\n"

puts 'Creating accountant for HandiHand'
accountant = User.create!(
  email: "accountant@handihand.com",
  password: 'password',
  company: companies.first
)
puts 'Accountant user at HandiHand created!'
puts "======================"
puts"\n"

puts 'Creating manager user for HandiHand'
accountant = User.create!(
  email: "manager@handihand.com",
  password: 'password',
  company: companies.first
)
puts 'Manager user at HandiHand created!'
puts "======================"
puts"\n"

puts 'Creating eavesdropper user from other company'
accountant = User.create!(
  email: "eavesdropper@helpery.com",
  password: 'password',
  company: companies.first
)
puts 'Eavesdropper user created for test purpose!'
puts "======================"
puts"\n"

puts 'Creating quote sample'
first = Quote.create!(
  name: "Sample quote",
  company: companies.first
)
puts 'Quote sample created!'
