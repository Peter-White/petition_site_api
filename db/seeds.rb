# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Signer.delete_all

signer = Signer.create!(first_name: 'Smeggy', last_name: 'Hill', age: 41, address: "47 Cocksauce Rd, Shittkicker TX", email: 'ihaspeen@scrotemail.com', quote: 'I\'m not hiring a fuckin theif')

signer = Signer.create!(first_name: 'Huri', last_name: 'Urass', age: 54, address: '69 Blowburn Ave, Tittiwaakah, Massachusetts', email: 'screamingwomanrunningdownthestreetthroatcut@badgermail.com', quote: 'To win the lottery, you have to buy a ticket.')

puts "Registered two signers"