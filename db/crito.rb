
crito = User.create({fname: "Crito", lname:"of Prospalta", username: "crito", pass: "12345678"})
soc = User.find_by_username('daemonic')

MetCon3 = MetaConversation.create();

Scon3 = soc.conversations.create(title: 'Why have you Come?', meta_conversation: MetCon3)
Ccon3 = crito.conversations.create(title: 'Why have you Come?', meta_conversation: MetCon3)



body_str = <<-BODY 
  Why have you come at this hour, Crito? it must be quite early.
BODY

msg1 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg1.send_msg
    msg1.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  Yes, certainly.
BODY

msg2 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg2.send_msg
    msg2.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  What is the exact time?
BODY

msg3 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg3.send_msg
    msg3.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  The dawn is breaking.
BODY

msg4 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg4.send_msg
    msg4.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  I wonder that the keeper of the prison would let you in.
BODY

msg5 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg5.send_msg
    msg5.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  He knows me because I often come, Socrates; moreover.  I have done
him a kindness.
BODY

msg6 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg6.send_msg
    msg6.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  And are you only just arrived?
BODY

msg7 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg7.send_msg
    msg7.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  No, I came some time ago.
BODY

msg8 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg8.send_msg
    msg8.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  Then why did you sit and say nothing, instead of at once
awakening me?
BODY

msg9 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg9.send_msg
    msg9.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  I should not have liked myself, Socrates, to be in such great
trouble and unrest as you are--indeed I should not:  I have been watching
with amazement your peaceful slumbers; and for that reason I did not awake
you, because I wished to minimize the pain.  I have always thought you to
be of a happy disposition; but never did I see anything like the easy,
tranquil manner in which you bear this calamity.
BODY

msg10 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg10.send_msg
    msg10.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  Why, Crito, when a man has reached my age he ought not to be
repining at the approach of death.
BODY

msg11 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg11.send_msg
    msg11.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  And yet other old men find themselves in similar misfortunes, and
age does not prevent them from repining.
BODY

msg12 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg12.send_msg
    msg12.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  That is true.  But you have not told me why you come at this
early hour.
BODY

msg13 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg13.send_msg
    msg13.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  I come to bring you a message which is sad and painful; not, as I
believe, to yourself, but to all of us who are your friends, and saddest of
all to me.
BODY

msg14 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.minutes.ago
    })

    msg14.send_msg
    msg14.update({updated_at: 9.minutes.ago})




body_str = <<-BODY 
  What?  Has the ship come from Delos, on the arrival of which I
am to die?
BODY

msg15 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg15.send_msg
    msg15.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  No, the ship has not actually arrived, but she will probably be
here to-day, as persons who have come from Sunium tell me that they have
left her there; and therefore to-morrow, Socrates, will be the last day of
your life.
BODY

msg16 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg16.send_msg
    msg16.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Very well, Crito; if such is the will of God, I am willing; but
my belief is that there will be a delay of a day.
BODY

msg17 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg17.send_msg
    msg17.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Why do you think so?
BODY

msg18 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg18.send_msg
    msg18.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  I will tell you.  I am to die on the day after the arrival of
the ship?
BODY

msg19 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg19.send_msg
    msg19.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Yes; that is what the authorities say.
BODY

msg20 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg20.send_msg
    msg20.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  But I do not think that the ship will be here until to-morrow;
this I infer from a vision which I had last night, or rather only just now,
when you fortunately allowed me to sleep.
BODY

msg21 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg21.send_msg
    msg21.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  And what was the nature of the vision?
BODY

msg22 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg22.send_msg
    msg22.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  There appeared to me the likeness of a woman, fair and comely,
clothed in bright raiment, who called to me and said:  O Socrates,
BODY

msg23 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg23.send_msg
    msg23.update({updated_at: 8.minutes.ago})






body_str = <<-BODY 
  What a singular dream, Socrates!
BODY

msg24 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg24.send_msg
    msg24.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  There can be no doubt about the meaning, Crito, I think.
BODY

msg25 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg25.send_msg
    msg25.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Yes; the meaning is only too clear.  But, oh! my beloved Socrates,
let me entreat you once more to take my advice and escape.  For if you die
I shall not only lose a friend who can never be replaced, but there is
another evil:  people who do not know you and me will believe that I might
have saved you if I had been willing to give money, but that I did not
care.  Now, can there be a worse disgrace than this--that I should be
thought to value money more than the life of a friend?  For the many will
not be persuaded that I wanted you to escape, and that you refused.
BODY

msg26 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg26.send_msg
    msg26.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  But why, my dear Crito, should we care about the opinion of the
many?  Good men, and they are the only persons who are worth considering,
will think of these things truly as they occurred.
BODY

msg27 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg27.send_msg
    msg27.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  But you see, Socrates, that the opinion of the many must be
regarded, for what is now happening shows that they can do the greatest
evil to any one who has lost their good opinion.
BODY

msg28 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg28.send_msg
    msg28.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  I only wish it were so, Crito; and that the many could do the
greatest evil; for then they would also be able to do the greatest good--
and what a fine thing this would be!  But in reality they can do neither;
for they cannot make a man either wise or foolish; and whatever they do is
the result of chance.
BODY

msg29 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg29.send_msg
    msg29.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Well, I will not dispute with you; but please to tell me, Socrates,
whether you are not acting out of regard to me and your other friends:  are
you not afraid that if you escape from prison we may get into trouble with
the informers for having stolen you away, and lose either the whole or a
great part of our property; or that even a worse evil may happen to us?
Now, if you fear on our account, be at ease; for in order to save you, we
ought surely to run this, or even a greater risk; be persuaded, then, and
do as I say.
BODY

msg30 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg30.send_msg
    msg30.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Yes, Crito, that is one fear which you mention, but by no means
the only one.
BODY

msg31 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg31.send_msg
    msg31.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Fear not--there are persons who are willing to get you out of
prison at no great cost; and as for the informers they are far from being
exorbitant in their demands--a little money will satisfy them.  My means,
which are certainly ample, are at your service, and if you have a scruple
about spending all mine, here are strangers who will give you the use of
theirs; and one of them, Simmias the Theban, has brought a large sum of
money for this very purpose; and Cebes and many others are prepared to
spend their money in helping you to escape.  I say, therefore, do not
hesitate on our account, and do not say, as you did in the court (compare
Apol.), that you will have a difficulty in knowing what to do with yourself
anywhere else.  For men will love you in other places to which you may go,
and not in Athens only; there are friends of mine in Thessaly, if you like
to go to them, who will value and protect you, and no Thessalian will give
you any trouble.  Nor can I think that you are at all justified, Socrates,
in betraying your own life when you might be saved; in acting thus you are
playing into the hands of your enemies, who are hurrying on your
destruction.  And further I should say that you are deserting your own
children; for you might bring them up and educate them; instead of which
you go away and leave them, and they will have to take their chance; and if
they do not meet with the usual fate of orphans, there will be small thanks
to you.  No man should bring children into the world who is unwilling to
persevere to the end in their nurture and education.  But you appear to be
choosing the easier part, not the better and manlier, which would have been
more becoming in one who professes to care for virtue in all his actions,
like yourself.  And indeed, I am ashamed not only of you, but of us who are
your friends, when I reflect that the whole business will be attributed
entirely to our want of courage.  The trial need never have come on, or
might have been managed differently; and this last act, or crowning folly,
will seem to have occurred through our negligence and cowardice, who might
have saved you, if we had been good for anything; and you might have saved
yourself, for there was no difficulty at all.  See now, Socrates, how sad
and discreditable are the consequences, both to us and you.  Make up your
mind then, or rather have your mind already made up, for the time of
deliberation is over, and there is only one thing to be done, which must be
done this very night, and if we delay at all will be no longer practicable
or possible; I beseech you therefore, Socrates, be persuaded by me, and do
as I say.
BODY

msg32 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg32.send_msg
    msg32.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Dear Crito, your zeal is invaluable, if a right one; but if
wrong, the greater the zeal the greater the danger; and therefore we ought
to consider whether I shall or shall not do as you say.  For I am and
always have been one of those natures who must be guided by reason,
whatever the reason may be which upon reflection appears to me to be the
best; and now that this chance has befallen me, I cannot repudiate my own
words:  the principles which I have hitherto honoured and revered I still
honour, and unless we can at once find other and better principles, I am
certain not to agree with you; no, not even if the power of the multitude
could inflict many more imprisonments, confiscations, deaths, frightening
us like children with hobgoblin terrors (compare Apol.).  What will be the
fairest way of considering the question?  Shall I return to your old
argument about the opinions of men?--we were saying that some of them are
to be regarded, and others not.  Now were we right in maintaining this
before I was condemned?  And has the argument which was once good now
proved to be talk for the sake of talking--mere childish nonsense?  That is
what I want to consider with your help, Crito:--whether, under my present
circumstances, the argument appears to be in any way different or not; and
is to be allowed by me or disallowed.  That argument, which, as I believe,
is maintained by many persons of authority, was to the effect, as I was
saying, that the opinions of some men are to be regarded, and of other men
not to be regarded.  Now you, Crito, are not going to die to-morrow--at
least, there is no human probability of this, and therefore you are
disinterested and not liable to be deceived by the circumstances in which
you are placed.  Tell me then, whether I am right in saying that some
opinions, and the opinions of some men only, are to be valued, and that
other opinions, and the opinions of other men, are not to be valued.  I ask
you whether I was right in maintaining this?
BODY

msg33 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg33.send_msg
    msg33.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Certainly.
BODY

msg34 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg34.send_msg
    msg34.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  The good are to be regarded, and not the bad?
BODY

msg35 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg35.send_msg
    msg35.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Yes.
BODY

msg36 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg36.send_msg
    msg36.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  And the opinions of the wise are good, and the opinions of the
unwise are evil?
BODY

msg37 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg37.send_msg
    msg37.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Certainly.
BODY

msg38 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg38.send_msg
    msg38.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  And what was said about another matter?  Is the pupil who
devotes himself to the practice of gymnastics supposed to attend to the
praise and blame and opinion of every man, or of one man only--his
physician or trainer, whoever he may be?
BODY

msg39 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.minutes.ago
    })

    msg39.send_msg
    msg39.update({updated_at: 8.minutes.ago})




body_str = <<-BODY 
  Of one man only.
BODY

msg40 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg40.send_msg
    msg40.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  And he ought to fear the censure and welcome the praise of that
one only, and not of the many?
BODY

msg41 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg41.send_msg
    msg41.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Clearly so.
BODY

msg42 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg42.send_msg
    msg42.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  And he ought to act and train, and eat and drink in the way
which seems good to his single master who has understanding, rather than
according to the opinion of all other men put together?
BODY

msg43 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg43.send_msg
    msg43.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  True.
BODY

msg44 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg44.send_msg
    msg44.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  And if he disobeys and disregards the opinion and approval of
the one, and regards the opinion of the many who have no understanding,
will he not suffer evil?
BODY

msg45 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg45.send_msg
    msg45.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Certainly he will.
BODY

msg46 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg46.send_msg
    msg46.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  And what will the evil be, whither tending and what affecting,
in the disobedient person?
BODY

msg47 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg47.send_msg
    msg47.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Clearly, affecting the body; that is what is destroyed by the evil.
BODY

msg48 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg48.send_msg
    msg48.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Very good; and is not this true, Crito, of other things which we
need not separately enumerate?  In questions of just and unjust, fair and
foul, good and evil, which are the subjects of our present consultation,
ought we to follow the opinion of the many and to fear them; or the opinion
of the one man who has understanding? ought we not to fear and reverence
him more than all the rest of the world:  and if we desert him shall we not
destroy and injure that principle in us which may be assumed to be improved
by justice and deteriorated by injustice;--there is such a principle?
BODY

msg49 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg49.send_msg
    msg49.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Certainly there is, Socrates.
BODY

msg50 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg50.send_msg
    msg50.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Take a parallel instance:--if, acting under the advice of those
who have no understanding, we destroy that which is improved by health and
is deteriorated by disease, would life be worth having?  And that which has
been destroyed is--the body?
BODY

msg51 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg51.send_msg
    msg51.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Yes.
BODY

msg52 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg52.send_msg
    msg52.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Could we live, having an evil and corrupted body?
BODY

msg53 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg53.send_msg
    msg53.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  Certainly not.
BODY

msg54 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.minutes.ago
    })

    msg54.send_msg
    msg54.update({updated_at: 7.minutes.ago})




body_str = <<-BODY 
  And will life be worth having, if that higher part of man be
destroyed, which is improved by justice and depraved by injustice?  Do we
suppose that principle, whatever it may be in man, which has to do with
justice and injustice, to be inferior to the body?
BODY

msg55 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg55.send_msg
    msg55.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Certainly not.
BODY

msg56 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg56.send_msg
    msg56.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  More honourable than the body?
BODY

msg57 = Scon3.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg57.send_msg
    msg57.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Far more.
BODY

msg58 = Ccon3.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg58.send_msg
    msg58.update({updated_at: 6.minutes.ago})




      
        Scon3.update({
                             message_timestamp: 6.minutes.ago,
                             read: false
                           }) 
        Ccon3.update({
                             message_timestamp: 6.minutes.ago,
                             read: false
                           }) 


      MetCon4 = MetaConversation.create();

      Scon4 = soc.conversations.create(title: "Then, my friend, we must not", meta_conversation: MetCon4)
      Ccon4 = crito.conversations.create(title: "Then, my friend, we must not", meta_conversation: MetCon4)
body_str = <<-BODY 
  Then, my friend, we must not regard what the many say of us:
but what he, the one man who has understanding of just and unjust, will
say, and what the truth will say.  And therefore you begin in error when
you advise that we should regard the opinion of the many about just and
unjust, good and evil, honorable and dishonorable.--'Well,' some one will
say, 'but the many can kill us.'
BODY

msg59 = Scon4.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg59.send_msg
    msg59.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Yes, Socrates; that will clearly be the answer.
BODY

msg60 = Ccon4.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg60.send_msg
    msg60.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  And it is true; but still I find with surprise that the old
argument is unshaken as ever.  And I should like to know whether I may say
the same of another proposition--that not life, but a good life, is to be
chiefly valued?
BODY

msg61 = Scon4.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg61.send_msg
    msg61.update({updated_at: 6.minutes.ago})




      
        Scon4.update({
                             message_timestamp: 6.minutes.ago,
                             read: false
                           }) 
        Ccon4.update({
                             message_timestamp: 6.minutes.ago,
                             read: false
                           }) 


      MetCon5 = MetaConversation.create();

      Scon5 = soc.conversations.create(title: "Yes, that also remains unshaken.", meta_conversation: MetCon5)
      Ccon5 = crito.conversations.create(title: "Yes, that also remains unshaken.", meta_conversation: MetCon5)
body_str = <<-BODY 
  Yes, that also remains unshaken.
BODY

msg62 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg62.send_msg
    msg62.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  And a good life is equivalent to a just and honorable one--that
holds also?
BODY

msg63 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg63.send_msg
    msg63.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Yes, it does.
BODY

msg64 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg64.send_msg
    msg64.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  From these premisses I proceed to argue the question whether I
ought or ought not to try and escape without the consent of the Athenians:
and if I am clearly right in escaping, then I will make the attempt; but if
not, I will abstain.  The other considerations which you mention, of money
and loss of character and the duty of educating one's children, are, I
fear, only the doctrines of the multitude, who would be as ready to restore
people to life, if they were able, as they are to put them to death--and
with as little reason.  But now, since the argument has thus far prevailed,
the only question which remains to be considered is, whether we shall do
rightly either in escaping or in suffering others to aid in our escape and
paying them in money and thanks, or whether in reality we shall not do
rightly; and if the latter, then death or any other calamity which may
ensue on my remaining here must not be allowed to enter into the
calculation.
BODY

msg65 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg65.send_msg
    msg65.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  I think that you are right, Socrates; how then shall we proceed?
BODY

msg66 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg66.send_msg
    msg66.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Let us consider the matter together, and do you either refute me
if you can, and I will be convinced; or else cease, my dear friend, from
repeating to me that I ought to escape against the wishes of the Athenians:
for I highly value your attempts to persuade me to do so, but I may not be
persuaded against my own better judgment.  And now please to consider my
first position, and try how you can best answer me.
BODY

msg67 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg67.send_msg
    msg67.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  I will.
BODY

msg68 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg68.send_msg
    msg68.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Are we to say that we are never intentionally to do wrong, or
that in one way we ought and in another way we ought not to do wrong, or is
doing wrong always evil and dishonorable, as I was just now saying, and as
has been already acknowledged by us?  Are all our former admissions which
were made within a few days to be thrown away?  And have we, at our age,
been earnestly discoursing with one another all our life long only to
discover that we are no better than children?  Or, in spite of the opinion
of the many, and in spite of consequences whether better or worse, shall we
insist on the truth of what was then said, that injustice is always an evil
and dishonour to him who acts unjustly?  Shall we say so or not?
BODY

msg69 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg69.send_msg
    msg69.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Yes.
BODY

msg70 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg70.send_msg
    msg70.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Then we must do no wrong?
BODY

msg71 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.minutes.ago
    })

    msg71.send_msg
    msg71.update({updated_at: 6.minutes.ago})




body_str = <<-BODY 
  Certainly not.
BODY

msg72 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg72.send_msg
    msg72.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Nor when injured injure in return, as the many imagine; for we
must injure no one at all?  (E.g. compare Rep.)
BODY

msg73 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg73.send_msg
    msg73.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Clearly not.
BODY

msg74 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg74.send_msg
    msg74.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Again, Crito, may we do evil?
BODY

msg75 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg75.send_msg
    msg75.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Surely not, Socrates.
BODY

msg76 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg76.send_msg
    msg76.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  And what of doing evil in return for evil, which is the morality
of the many--is that just or not?
BODY

msg77 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg77.send_msg
    msg77.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Not just.
BODY

msg78 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg78.send_msg
    msg78.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  For doing evil to another is the same as injuring him?
BODY

msg79 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg79.send_msg
    msg79.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Very true.
BODY

msg80 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg80.send_msg
    msg80.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Then we ought not to retaliate or render evil for evil to any
one, whatever evil we may have suffered from him.  But I would have you
consider, Crito, whether you really mean what you are saying.  For this
opinion has never been held, and never will be held, by any considerable
number of persons; and those who are agreed and those who are not agreed
upon this point have no common ground, and can only despise one another
when they see how widely they differ.  Tell me, then, whether you agree
with and assent to my first principle, that neither injury nor retaliation
nor warding off evil by evil is ever right.  And shall that be the premiss
of our argument?  Or do you decline and dissent from this?  For so I have
ever thought, and continue to think; but, if you are of another opinion,
let me hear what you have to say.  If, however, you remain of the same mind
as formerly, I will proceed to the next step.
BODY

msg81 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg81.send_msg
    msg81.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  You may proceed, for I have not changed my mind.
BODY

msg82 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg82.send_msg
    msg82.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Then I will go on to the next point, which may be put in the
form of a question:--Ought a man to do what he admits to be right, or ought
he to betray the right?
BODY

msg83 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg83.send_msg
    msg83.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  He ought to do what he thinks right.
BODY

msg84 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg84.send_msg
    msg84.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  But if this is true, what is the application?  In leaving the
prison against the will of the Athenians, do I wrong any? or rather do I
not wrong those whom I ought least to wrong?  Do I not desert the
principles which were acknowledged by us to be just--what do you say?
BODY

msg85 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg85.send_msg
    msg85.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  I cannot tell, Socrates, for I do not know.
BODY

msg86 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg86.send_msg
    msg86.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Then consider the matter in this way:--Imagine that I am about
to play truant (you may call the proceeding by any name which you like),
and the laws and the government come and interrogate me:  'Tell us,
Socrates,' they say; 'what are you about? are you not going by an act of
yours to overturn us--the laws, and the whole state, as far as in you lies?
Do you imagine that a state can subsist and not be overthrown, in which the
decisions of law have no power, but are set aside and trampled upon by
individuals?'  What will be our answer, Crito, to these and the like words?
Any one, and especially a rhetorician, will have a good deal to say on
behalf of the law which requires a sentence to be carried out.  He will
argue that this law should not be set aside; and shall we reply, 'Yes; but
the state has injured us and given an unjust sentence.'  Suppose I say
that?
BODY

msg87 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.minutes.ago
    })

    msg87.send_msg
    msg87.update({updated_at: 5.minutes.ago})




body_str = <<-BODY 
  Very good, Socrates.
BODY

msg88 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg88.send_msg
    msg88.update({updated_at: 4.minutes.ago})




body_str = <<-BODY 
  'And was that our agreement with you?' the law would answer; 'or
were you to abide by the sentence of the state?'  And if I were to express
my astonishment at their words, the law would probably add:  'Answer,
Socrates, instead of opening your eyes--you are in the habit of asking and
answering questions.  Tell us,--What complaint have you to make against us
which justifies you in attempting to destroy us and the state?  In the
first place did we not bring you into existence?  Your father married your
mother by our aid and begat you.  Say whether you have any objection to
urge against those of us who regulate marriage?'  None, I should reply.
'Or against those of us who after birth regulate the nurture and education
of children, in which you also were trained?  Were not the laws, which have
the charge of education, right in commanding your father to train you in
music and gymnastic?'  Right, I should reply.  'Well then, since you were
brought into the world and nurtured and educated by us, can you deny in the
first place that you are our child and slave, as your fathers were before
you?  And if this is true you are not on equal terms with us; nor can you
think that you have a right to do to us what we are doing to you.  Would
you have any right to strike or revile or do any other evil to your father
or your master, if you had one, because you have been struck or reviled by
him, or received some other evil at his hands?--you would not say this?
And because we think right to destroy you, do you think that you have any
right to destroy us in return, and your country as far as in you lies?
Will you, O professor of true virtue, pretend that you are justified in
this?  Has a philosopher like you failed to discover that our country is
more to be valued and higher and holier far than mother or father or any
ancestor, and more to be regarded in the eyes of the gods and of men of
understanding? also to be soothed, and gently and reverently entreated when
angry, even more than a father, and either to be persuaded, or if not
persuaded, to be obeyed?  And when we are punished by her, whether with
imprisonment or stripes, the punishment is to be endured in silence; and if
she lead us to wounds or death in battle, thither we follow as is right;
neither may any one yield or retreat or leave his rank, but whether in
battle or in a court of law, or in any other place, he must do what his
city and his country order him; or he must change their view of what is
just:  and if he may do no violence to his father or mother, much less may
he do violence to his country.'  What answer shall we make to this, Crito?
Do the laws speak truly, or do they not?
BODY

msg89 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg89.send_msg
    msg89.update({updated_at: 4.minutes.ago})




body_str = <<-BODY 
  I think that they do.
BODY

msg90 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg90.send_msg
    msg90.update({updated_at: 4.minutes.ago})




body_str = <<-BODY 
  Then the laws will say:  'Consider, Socrates, if we are speaking
truly that in your present attempt you are going to do us an injury.  For,
having brought you into the world, and nurtured and educated you, and given
you and every other citizen a share in every good which we had to give, we
further proclaim to any Athenian by the liberty which we allow him, that if
he does not like us when he has become of age and has seen the ways of the
city, and made our acquaintance, he may go where he pleases and take his
goods with him.  None of us laws will forbid him or interfere with him.
Any one who does not like us and the city, and who wants to emigrate to a
colony or to any other city, may go where he likes, retaining his property.
But he who has experience of the manner in which we order justice and
administer the state, and still remains, has entered into an implied
contract that he will do as we command him.  And he who disobeys us is, as
we maintain, thrice wrong:  first, because in disobeying us he is
disobeying his parents; secondly, because we are the authors of his
education; thirdly, because he has made an agreement with us that he will
duly obey our commands; and he neither obeys them nor convinces us that our
commands are unjust; and we do not rudely impose them, but give him the
alternative of obeying or convincing us;--that is what we offer, and he
does neither.
'These are the sort of accusations to which, as we were saying, you,
Socrates, will be exposed if you accomplish your intentions; you, above all
other Athenians.'  Suppose now I ask, why I rather than anybody else? they
will justly retort upon me that I above all other men have acknowledged the
agreement.  'There is clear proof,' they will say, 'Socrates, that we and
the city were not displeasing to you.  Of all Athenians you have been the
most constant resident in the city, which, as you never leave, you may be
supposed to love (compare Phaedr.).  For you never went out of the city
either to see the games, except once when you went to the Isthmus, or to
any other place unless when you were on military service; nor did you
travel as other men do.  Nor had you any curiosity to know other states or
their laws:  your affections did not go beyond us and our state; we were
your especial favourites, and you acquiesced in our government of you; and
here in this city you begat your children, which is a proof of your
satisfaction.  Moreover, you might in the course of the trial, if you had
liked, have fixed the penalty at banishment; the state which refuses to let
you go now would have let you go then.  But you pretended that you
preferred death to exile (compare Apol.), and that you were not unwilling
to die.  And now you have forgotten these fine sentiments, and pay no
respect to us the laws, of whom you are the destroyer; and are doing what
only a miserable slave would do, running away and turning your back upon
the compacts and agreements which you made as a citizen.  And first of all
answer this very question:  Are we right in saying that you agreed to be
governed according to us in deed, and not in word only?  Is that true or
not?'  How shall we answer, Crito?  Must we not assent?
BODY

msg91 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg91.send_msg
    msg91.update({updated_at: 4.minutes.ago})




body_str = <<-BODY 
  We cannot help it, Socrates.
BODY

msg92 = Ccon5.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg92.send_msg
    msg92.update({updated_at: 4.minutes.ago})




body_str = <<-BODY 
  Then will they not say:  'You, Socrates, are breaking the
covenants and agreements which you made with us at your leisure, not in any
haste or under any compulsion or deception, but after you have had seventy
years to think of them, during which time you were at liberty to leave the
city, if we were not to your mind, or if our covenants appeared to you to
be unfair.  You had your choice, and might have gone either to Lacedaemon
or Crete, both which states are often praised by you for their good
government, or to some other Hellenic or foreign state.  Whereas you, above
all other Athenians, seemed to be so fond of the state, or, in other words,
of us her laws (and who would care about a state which has no laws?), that
you never stirred out of her; the halt, the blind, the maimed, were not
more stationary in her than you were.  And now you run away and forsake
your agreements.  Not so, Socrates, if you will take our advice; do not
make yourself ridiculous by escaping out of the city.
'For just consider, if you transgress and err in this sort of way, what
good will you do either to yourself or to your friends?  That your friends
will be driven into exile and deprived of citizenship, or will lose their
property, is tolerably certain; and you yourself, if you fly to one of the
neighbouring cities, as, for example, Thebes or Megara, both of which are
well governed, will come to them as an enemy, Socrates, and their
government will be against you, and all patriotic citizens will cast an
evil eye upon you as a subverter of the laws, and you will confirm in the
minds of the judges the justice of their own condemnation of you.  For he
who is a corrupter of the laws is more than likely to be a corrupter of the
young and foolish portion of mankind.  Will you then flee from well-ordered
cities and virtuous men? and is existence worth having on these terms?  Or
will you go to them without shame, and talk to them, Socrates?  And what
will you say to them?  What you say here about virtue and justice and
institutions and laws being the best things among men?  Would that be
decent of you?  Surely not.  But if you go away from well-governed states
to Crito's friends in Thessaly, where there is great disorder and licence,
they will be charmed to hear the tale of your escape from prison, set off
with ludicrous particulars of the manner in which you were wrapped in a
goatskin or some other disguise, and metamorphosed as the manner is of
runaways; but will there be no one to remind you that in your old age you
were not ashamed to violate the most sacred laws from a miserable desire of
a little more life?  Perhaps not, if you keep them in a good temper; but if
they are out of temper you will hear many degrading things; you will live,
but how?--as the flatterer of all men, and the servant of all men; and
doing what?--eating and drinking in Thessaly, having gone abroad in order
that you may get a dinner.  And where will be your fine sentiments about
justice and virtue?  Say that you wish to live for the sake of your
children--you want to bring them up and educate them--will you take them
into Thessaly and deprive them of Athenian citizenship?  Is this the
benefit which you will confer upon them?  Or are you under the impression
that they will be better cared for and educated here if you are still
alive, although absent from them; for your friends will take care of them?
Do you fancy that if you are an inhabitant of Thessaly they will take care
of them, and if you are an inhabitant of the other world that they will not
take care of them?  Nay; but if they who call themselves friends are good
for anything, they will--to be sure they will.
'Listen, then, Socrates, to us who have brought you up.  Think not of life
and children first, and of justice afterwards, but of justice first, that
you may be justified before the princes of the world below.  For neither
will you nor any that belong to you be happier or holier or juster in this
life, or happier in another, if you do as Crito bids.  Now you depart in
innocence, a sufferer and not a doer of evil; a victim, not of the laws,
but of men.  But if you go forth, returning evil for evil, and injury for
injury, breaking the covenants and agreements which you have made with us,
and wronging those whom you ought least of all to wrong, that is to say,
yourself, your friends, your country, and us, we shall be angry with you
while you live, and our brethren, the laws in the world below, will receive
you as an enemy; for they will know that you have done your best to destroy
us.  Listen, then, to us and not to Crito.'
This, dear Crito, is the voice which I seem to hear murmuring in my ears,
like the sound of the flute in the ears of the mystic; that voice, I say,
is humming in my ears, and prevents me from hearing any other.  And I know
that anything more which you may say will be vain.  Yet speak, if you have
anything to say.
BODY

msg93 = Scon5.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg93.send_msg
    msg93.update({updated_at: 4.minutes.ago})




      
        Scon5.update({
                             message_timestamp: 4.minutes.ago,
                             read: false
                           }) 
        Ccon5.update({
                             message_timestamp: 4.minutes.ago,
                             read: false
                           }) 


      MetCon6 = MetaConversation.create();

      Scon6 = soc.conversations.create(title: "I have nothing to say, Socrates.", meta_conversation: MetCon6)
      Ccon6 = crito.conversations.create(title: "I have nothing to say, Socrates.", meta_conversation: MetCon6)
body_str = <<-BODY 
  I have nothing to say, Socrates.
BODY

msg94 = Ccon6.messages.create({
    source_address: "crito#{EMAIL_SIGNATURE}",
    target_address: "daemonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg94.send_msg
    msg94.update({updated_at: 4.minutes.ago})




body_str = <<-BODY 
  Leave me then, Crito, to fulfil the will of God, and to follow
whither he leads.

BODY

msg95 = Scon6.messages.create({
    source_address: "daemonic#{EMAIL_SIGNATURE}",
    target_address: "crito#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.minutes.ago
    })

    msg95.send_msg
    msg95.update({updated_at: 4.minutes.ago})


