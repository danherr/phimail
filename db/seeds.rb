# coding: utf-8
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
MetaConversation.destroy_all

load './db/meno.rb'

admin = User.create!({fname:"Admin", lname:"istrator", username: "admin", pass:"iamtheROOT"})

intro = admin.conversations.create!(title: 'Welcome to φmail!')

intro_msg = intro.messages.create!({
                        source_address: "admin#{EMAIL_SIGNATURE}",
                        target_address: "daimonic#{EMAIL_SIGNATURE}",
                        body: <<-BODY,
Hello and welcome to φmail.

This is a clone of Gmail, built in Ruby and JavaScript, with a Rails backend and a frontend
written with React.js and Flux.

This demo account holds the inbox of the philosopher Socrates. I have filled it with a chain of emails
constructed from the text of plato's dialogue: the Meno. For more details on the script that did this, 
see the readme on this project's GitHub page. These emails are divided into a little
over 60 conversations, rather than all being in one chain. This is so that you can play with the 
list interface.  I will be reseeding the database periodically, but I would ask that you not delete too 
many of the demo conversations.  If the inbox is empty, its likely a previous visitor was less 
considerate.

The app does not yet send or recieve emails from the outside world, only between accounts on φmail 
itself. If you'd like to see this behaviour, feel free to sign in as one of the other three accounts
already on the system. These have usernames: 'meno', 'anytus' and 'boy'. All three use the 
password: '12345678'.  Alternately: feel free to create an account - though it will be destroyed at the
next reseed.

Finally: if you log out and then log back in - this message will be marked as unread. This is not a bug
but a feature, since this message is meant to attract the attention of every new visitor.

BODY
                      })

    intro_msg.send_msg
