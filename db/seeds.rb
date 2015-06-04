# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Signer.delete_all

signer = Signer.create!(first_name: 'I.P', last_name: 'Frealy', age: 41, address: "123 Fake St, Springfield", email: 'Ihearttheleader@cultchat.com', quote: 'They\'re like the perfect mix of cats and dogs, who wouldn\'t want one.')

signer = Signer.create!(first_name: 'Amanda', last_name: 'Hugginkis', age: 21, address: '47 Evergreen Terance, Australia, Australia', email: 'imlookingforamandahugginkis@badgermail.com', quote: 'I just want to sqeaze those littles tails of theirs.')

puts "Registered two signers"
