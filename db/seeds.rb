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
companies = Company.create([{ name: "Kpmg" }, { name: "PwC" }])
puts ' 2 companies created!'
puts "======================"
puts"\n"

puts 'Creating accountant user'
accountant = User.create!(
  email: "accountant@kpmg.com",
  password: 'password',
  company: companies.first
)
puts 'accountant user created!'
puts "======================"
puts"\n"

puts 'Creating quote sample'
first = Quote.create!(
  name: "First quote",
  company: companies.first
)
puts 'Quote sample created!'
