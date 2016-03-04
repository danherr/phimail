# [φmail] [heroku]

[heroku]: http://phimail.pw

# Summary

φmail is a clone of Gmail, build on Rails with a React/Flux frontend. 

## Languages

- Ruby
- Javascript

## Frameworks

- Rails
- React

#Screen Shots

[![Screen Shot 1](/screenshots/phimail_screen_1.png)] [heroku]

[![Screen Shot 2](/screenshots/phimail_screen_2.png)] [heroku]

#Seeding

The demonstration account is the email for the philosopher Socrates.
In order to fill it with emails, I wrote scripts to covert the text of four
of Plato's dialogues into a chain of emails between Socrates, and the other characters involved.
The scripts can be found in the database folder, along with the raw texts of the four dialogues
and the seeding files that were generated.

The parsing file reads in the raw text of the dialog, and splits it on pairs of new-lines.
Each chunk of text is then turned into a string of ruby code to create an email from the speaker
to the other involved parties.  This email is then sent, so we are also seeding the accounts
of the other characters. At random intervals, the stream of messages is split into a new
conversation, so that Socrates' inbox will look full. Also, there is a time counter
that controlls how old these messages will appear - ranging from several years to several
minutes.

Once it has generated this string of ruby code - the parsing script outputs it to a file
which is run by 'seeds.rb'.