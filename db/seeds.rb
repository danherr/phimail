# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all

User.create({fname: "Plato", lname:"of Athens", username: "Plato69", pass: "Socrates1"})
User.create({fname: "Friedrich", lname:"Nietzsche", username: "ubermensch", pass: "Will2Power"})
