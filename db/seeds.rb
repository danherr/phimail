# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.destroy_all

soc = User.create({fname: "Socrates", lname:"of Athens", username: "daimonic", pass: "Iamplato1", avatar_url: ActionController::Base.helpers.asset_path("socrates.png")})
fred = User.create({fname: "Friedrich", lname:"Nietzsche", username: "ubermensch", pass: "Will2Power"})

Conversation.destroy_all
MessageConversationLink.destroy_all
Message.destroy_all

load './db/meno.rb'
