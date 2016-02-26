
phaedrus = User.create({fname: "Phaedrus", lname:"son of Pythocles", username: "phaedrus", pass: "12345678"})
soc = User.find_by_username('daimonic')

MetCon3 = MetaConversation.create();

Scon3 = soc.conversations.create(title: 'A Question', meta_conversation: MetCon3)
Pcon3 = phaedrus.conversations.create(title: 'A Question', meta_conversation: MetCon3)



body_str = <<-BODY 
 Socrates, Phaedrus.
BODY



body_str = <<-BODY 
 Under a plane-tree, by the banks of the Ilissus.
BODY



body_str = <<-BODY 
 My dear Phaedrus, whence come you, and whither are you going?
BODY



body_str = <<-BODY 
 I come from Lysias the son of Cephalus, and I am going to
take a walk outside the wall, for I have been sitting with him the whole
morning; and our common friend Acumenus tells me that it is much more
refreshing to walk in the open air than to be shut up in a cloister.
BODY

msg4 = Pcon3.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg4.send_msg
    msg4.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 There he is right. Lysias then, I suppose, was in the town?
BODY

msg5 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg5.send_msg
    msg5.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 Yes, he was staying with Epicrates, here at the house of
Morychus; that house which is near the temple of Olympian Zeus.
BODY

msg6 = Pcon3.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg6.send_msg
    msg6.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 And how did he entertain you? Can I be wrong in supposing that
Lysias gave you a feast of discourse?
BODY

msg7 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg7.send_msg
    msg7.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 You shall hear, if you can spare time to accompany me.
BODY

msg8 = Pcon3.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg8.send_msg
    msg8.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 And should I not deem the conversation of you and Lysias 'a
thing of higher import,' as I may say in the words of Pindar, 'than any
business'?
BODY

msg9 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg9.send_msg
    msg9.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 Will you go on?
BODY

msg10 = Pcon3.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg10.send_msg
    msg10.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 And will you go on with the narration?
BODY

msg11 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg11.send_msg
    msg11.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 My tale, Socrates, is one of your sort, for love was the theme
which occupied us--love after a fashion: Lysias has been writing about
a fair youth who was being tempted, but not by a lover; and this was
the point: he ingeniously proved that the non-lover should be accepted
rather than the lover.
BODY

msg12 = Pcon3.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg12.send_msg
    msg12.update({updated_at: 9.years.ago})




      
        Scon3.update({
                             message_timestamp: 9.years.ago,
                             read: true
                           }) 
        Pcon3.update({
                             message_timestamp: 9.years.ago,
                             read: true
                           }) 


      MetCon4 = MetaConversation.create();

      Scon4 = soc.conversations.create(title: "O that is noble of him!", meta_conversation: MetCon4)
      Pcon4 =  phaedrus.conversations.create(title: "O that is noble of him!", meta_conversation: MetCon4)
body_str = <<-BODY 
 O that is noble of him! I wish that he would say the poor man
rather than the rich, and the old man rather than the young one;--then
he would meet the case of me and of many a man; his words would be quite
refreshing, and he would be a public benefactor. For my part, I do so
long to hear his speech, that if you walk all the way to Megara, and
when you have reached the wall come back, as Herodicus recommends,
without going in, I will keep you company.
BODY

msg13 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.years.ago
    })

    msg13.send_msg
    msg13.update({updated_at: 9.years.ago})




body_str = <<-BODY 
 What do you mean, my good Socrates? How can you imagine that
my unpractised memory can do justice to an elaborate work, which the
greatest rhetorician of the age spent a long time in composing. Indeed,
I cannot; I would give a great deal if I could.
BODY

msg14 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg14.send_msg
    msg14.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 I believe that I know Phaedrus about as well as I know myself,
and I am very sure that the speech of Lysias was repeated to him, not
once only, but again and again;--he insisted on hearing it many times
over and Lysias was very willing to gratify him; at last, when nothing
else would do, he got hold of the book, and looked at what he most
wanted to see,--this occupied him during the whole morning;--and then
when he was tired with sitting, he went out to take a walk, not until,
by the dog, as I believe, he had simply learned by heart the entire
discourse, unless it was unusually long, and he went to a place outside
the wall that he might practise his lesson. There he saw a certain
lover of discourse who had a similar weakness;--he saw and rejoiced; now
thought he, 'I shall have a partner in my revels.' And he invited him to
come and walk with him. But when the lover of discourse begged that he
would repeat the tale, he gave himself airs and said, 'No I cannot,'
as if he were indisposed; although, if the hearer had refused, he would
sooner or later have been compelled by him to listen whether he would or
no. Therefore, Phaedrus, bid him do at once what he will soon do whether
bidden or not.
BODY

msg15 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg15.send_msg
    msg15.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 I see that you will not let me off until I speak in some
fashion or other; verily therefore my best plan is to speak as I best
can.
BODY

msg16 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg16.send_msg
    msg16.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 A very true remark, that of yours.
BODY

msg17 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg17.send_msg
    msg17.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 I will do as I say; but believe me, Socrates, I did not learn
the very words--O no; nevertheless I have a general notion of what
he said, and will give you a summary of the points in which the lover
differed from the non-lover. Let me begin at the beginning.
BODY

msg18 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg18.send_msg
    msg18.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 Yes, my sweet one; but you must first of all show what you
have in your left hand under your cloak, for that roll, as I suspect,
is the actual discourse. Now, much as I love you, I would not have you
suppose that I am going to have your memory exercised at my expense, if
you have Lysias himself here.
BODY

msg19 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg19.send_msg
    msg19.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 Enough; I see that I have no hope of practising my art upon
you. But if I am to read, where would you please to sit?
BODY

msg20 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg20.send_msg
    msg20.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 Let us turn aside and go by the Ilissus; we will sit down at
some quiet spot.
BODY

msg21 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg21.send_msg
    msg21.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 I am fortunate in not having my sandals, and as you never have
any, I think that we may go along the brook and cool our feet in the
water; this will be the easiest way, and at midday and in the summer is
far from being unpleasant.
BODY

msg22 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg22.send_msg
    msg22.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 Lead on, and look out for a place in which we can sit down.
BODY

msg23 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.years.ago
    })

    msg23.send_msg
    msg23.update({updated_at: 8.years.ago})




body_str = <<-BODY 
 Do you see the tallest plane-tree in the distance?
BODY

msg24 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg24.send_msg
    msg24.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 Yes.
BODY

msg25 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg25.send_msg
    msg25.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 There are shade and gentle breezes, and grass on which we may
either sit or lie down.
BODY

msg26 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg26.send_msg
    msg26.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 Move forward.
BODY

msg27 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg27.send_msg
    msg27.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 I should like to know, Socrates, whether the place is not
somewhere here at which Boreas is said to have carried off Orithyia from
the banks of the Ilissus?
BODY

msg28 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg28.send_msg
    msg28.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 Such is the tradition.
BODY

msg29 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg29.send_msg
    msg29.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 And is this the exact spot? The little stream is delightfully
clear and bright; I can fancy that there might be maidens playing near.
BODY

msg30 = Pcon4.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg30.send_msg
    msg30.update({updated_at: 7.years.ago})




      
        Scon4.update({
                             message_timestamp: 7.years.ago,
                             read: true
                           }) 
        Pcon4.update({
                             message_timestamp: 7.years.ago,
                             read: true
                           }) 


      MetCon5 = MetaConversation.create();

      Scon5 = soc.conversations.create(title: "I believe that the spot is", meta_conversation: MetCon5)
      Pcon5 =  phaedrus.conversations.create(title: "I believe that the spot is", meta_conversation: MetCon5)
body_str = <<-BODY 
 I believe that the spot is not exactly here, but about a
quarter of a mile lower down, where you cross to the temple of Artemis,
and there is, I think, some sort of an altar of Boreas at the place.
BODY

msg31 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg31.send_msg
    msg31.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 I have never noticed it; but I beseech you to tell me,
Socrates, do you believe this tale?
BODY

msg32 = Pcon5.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg32.send_msg
    msg32.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 The wise are doubtful, and I should not be singular if, like
them, I too doubted. I might have a rational explanation that Orithyia
was playing with Pharmacia, when a northern gust carried her over the
neighbouring rocks; and this being the manner of her death, she was said
to have been carried away by Boreas. There is a discrepancy, however,
about the locality; according to another version of the story she was
taken from Areopagus, and not from this place. Now I quite acknowledge
that these allegories are very nice, but he is not to be envied who has
to invent them; much labour and ingenuity will be required of him; and
when he has once begun, he must go on and rehabilitate Hippocentaurs and
chimeras dire. Gorgons and winged steeds flow in apace, and numberless
other inconceivable and portentous natures. And if he is sceptical
about them, and would fain reduce them one after another to the rules of
probability, this sort of crude philosophy will take up a great deal of
time. Now I have no leisure for such enquiries; shall I tell you why? I
must first know myself, as the Delphian inscription says; to be curious
about that which is not my concern, while I am still in ignorance of my
own self, would be ridiculous. And therefore I bid farewell to all this;
the common opinion is enough for me. For, as I was saying, I want to
know not about this, but about myself: am I a monster more complicated
and swollen with passion than the serpent Typho, or a creature of a
gentler and simpler sort, to whom Nature has given a diviner and lowlier
destiny? But let me ask you, friend: have we not reached the plane-tree
to which you were conducting us?
BODY

msg33 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg33.send_msg
    msg33.update({updated_at: 7.years.ago})




      
        Scon5.update({
                             message_timestamp: 7.years.ago,
                             read: true
                           }) 
        Pcon5.update({
                             message_timestamp: 7.years.ago,
                             read: true
                           }) 


      MetCon6 = MetaConversation.create();

      Scon6 = soc.conversations.create(title: "Yes, this is the tree.", meta_conversation: MetCon6)
      Pcon6 =  phaedrus.conversations.create(title: "Yes, this is the tree.", meta_conversation: MetCon6)
body_str = <<-BODY 
 Yes, this is the tree.
BODY

msg34 = Pcon6.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg34.send_msg
    msg34.update({updated_at: 7.years.ago})




      
        Scon6.update({
                             message_timestamp: 7.years.ago,
                             read: true
                           }) 
        Pcon6.update({
                             message_timestamp: 7.years.ago,
                             read: true
                           }) 


      MetCon7 = MetaConversation.create();

      Scon7 = soc.conversations.create(title: "By Here, a fair resting-place, full", meta_conversation: MetCon7)
      Pcon7 =  phaedrus.conversations.create(title: "By Here, a fair resting-place, full", meta_conversation: MetCon7)
body_str = <<-BODY 
 By Here, a fair resting-place, full of summer sounds and
scents. Here is this lofty and spreading plane-tree, and the agnus
castus high and clustering, in the fullest blossom and the greatest
fragrance; and the stream which flows beneath the plane-tree is
deliciously cold to the feet. Judging from the ornaments and images,
this must be a spot sacred to Achelous and the Nymphs. How delightful is
the breeze:--so very sweet; and there is a sound in the air shrill and
summerlike which makes answer to the chorus of the cicadae. But the
greatest charm of all is the grass, like a pillow gently sloping to the
head. My dear Phaedrus, you have been an admirable guide.
BODY

msg35 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg35.send_msg
    msg35.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 What an incomprehensible being you are, Socrates: when you are
in the country, as you say, you really are like some stranger who is led
about by a guide. Do you ever cross the border? I rather think that you
never venture even outside the gates.
BODY

msg36 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.years.ago
    })

    msg36.send_msg
    msg36.update({updated_at: 7.years.ago})




body_str = <<-BODY 
 Very true, my good friend; and I hope that you will excuse me
when you hear the reason, which is, that I am a lover of knowledge, and
the men who dwell in the city are my teachers, and not the trees or the
country. Though I do indeed believe that you have found a spell with
which to draw me out of the city into the country, like a hungry cow
before whom a bough or a bunch of fruit is waved. For only hold up
before me in like manner a book, and you may lead me all round Attica,
and over the wide world. And now having arrived, I intend to lie down,
and do you choose any posture in which you can read best. Begin.
BODY

msg37 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg37.send_msg
    msg37.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Listen. You know how matters stand with me; and how, as I
conceive, this affair may be arranged for the advantage of both of us.
And I maintain that I ought not to fail in my suit, because I am not
your lover: for lovers repent of the kindnesses which they have shown
when their passion ceases, but to the non-lovers who are free and not
under any compulsion, no time of repentance ever comes; for they confer
their benefits according to the measure of their ability, in the way
which is most conducive to their own interest. Then again, lovers
consider how by reason of their love they have neglected their own
concerns and rendered service to others: and when to these benefits
conferred they add on the troubles which they have endured, they think
that they have long ago made to the beloved a very ample return. But the
non-lover has no such tormenting recollections; he has never neglected
his affairs or quarrelled with his relations; he has no troubles to
add up or excuses to invent; and being well rid of all these evils, why
should he not freely do what will gratify the beloved? If you say that
the lover is more to be esteemed, because his love is thought to be
greater; for he is willing to say and do what is hateful to other men,
in order to please his beloved;--that, if true, is only a proof that he
will prefer any future love to his present, and will injure his old
love at the pleasure of the new. And how, in a matter of such infinite
importance, can a man be right in trusting himself to one who is
afflicted with a malady which no experienced person would attempt to
cure, for the patient himself admits that he is not in his right mind,
and acknowledges that he is wrong in his mind, but says that he is
unable to control himself? And if he came to his right mind, would he
ever imagine that the desires were good which he conceived when in his
wrong mind? Once more, there are many more non-lovers than lovers; and
if you choose the best of the lovers, you will not have many to choose
from; but if from the non-lovers, the choice will be larger, and you
will be far more likely to find among them a person who is worthy of
your friendship. If public opinion be your dread, and you would avoid
reproach, in all probability the lover, who is always thinking that
other men are as emulous of him as he is of them, will boast to some
one of his successes, and make a show of them openly in the pride of his
heart;--he wants others to know that his labour has not been lost; but
the non-lover is more his own master, and is desirous of solid good, and
not of the opinion of mankind. Again, the lover may be generally noted
or seen following the beloved (this is his regular occupation), and
whenever they are observed to exchange two words they are supposed to
meet about some affair of love either past or in contemplation; but when
non-lovers meet, no one asks the reason why, because people know that
talking to another is natural, whether friendship or mere pleasure
be the motive. Once more, if you fear the fickleness of friendship,
consider that in any other case a quarrel might be a mutual calamity;
but now, when you have given up what is most precious to you, you will
be the greater loser, and therefore, you will have more reason in
being afraid of the lover, for his vexations are many, and he is always
fancying that every one is leagued against him. Wherefore also he
debars his beloved from society; he will not have you intimate with
the wealthy, lest they should exceed him in wealth, or with men of
education, lest they should be his superiors in understanding; and he is
equally afraid of anybody's influence who has any other advantage over
himself. If he can persuade you to break with them, you are left without
a friend in the world; or if, out of a regard to your own interest, you
have more sense than to comply with his desire, you will have to quarrel
with him. But those who are non-lovers, and whose success in love is the
reward of their merit, will not be jealous of the companions of their
beloved, and will rather hate those who refuse to be his associates,
thinking that their favourite is slighted by the latter and benefited by
the former; for more love than hatred may be expected to come to him out
of his friendship with others. Many lovers too have loved the person of
a youth before they knew his character or his belongings; so that when
their passion has passed away, there is no knowing whether they will
continue to be his friends; whereas, in the case of non-lovers who were
always friends, the friendship is not lessened by the favours granted;
but the recollection of these remains with them, and is an earnest of
good things to come.
BODY

msg38 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg38.send_msg
    msg38.update({updated_at: 6.years.ago})






body_str = <<-BODY 
--if this
were true, we should set small value on sons, or fathers, or mothers;
nor should we ever have loyal friends, for our love of them arises
not from passion, but from other associations. Further, if we ought
to shower favours on those who are the most eager suitors,--on that
principle, we ought always to do good, not to the most virtuous, but to
the most needy; for they are the persons who will be most relieved,
and will therefore be the most grateful; and when you make a feast you
should invite not your friend, but the beggar and the empty soul; for
they will love you, and attend you, and come about your doors, and
will be the best pleased, and the most grateful, and will invoke many a
blessing on your head. Yet surely you ought not to be granting favours
to those who besiege you with prayer, but to those who are best able to
reward you; nor to the lover only, but to those who are worthy of love;
nor to those who will enjoy the bloom of your youth, but to those who
will share their possessions with you in age; nor to those who, having
succeeded, will glory in their success to others, but to those who
will be modest and tell no tales; nor to those who care about you for a
moment only, but to those who will continue your friends through life;
nor to those who, when their passion is over, will pick a quarrel with
you, but rather to those who, when the charm of youth has left you, will
show their own virtue. Remember what I have said; and consider yet this
further point: friends admonish the lover under the idea that his way of
life is bad, but no one of his kindred ever yet censured the non-lover,
or thought that he was ill-advised about his own interests.
BODY









body_str = <<-BODY 
 Yes, quite admirable; the effect on me was ravishing. And this
I owe to you, Phaedrus, for I observed you while reading to be in an
ecstasy, and thinking that you are more experienced in these matters
than I am, I followed your example, and, like you, my divine darling, I
became inspired with a phrenzy.
BODY

msg40 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg40.send_msg
    msg40.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Indeed, you are pleased to be merry.
BODY

msg41 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg41.send_msg
    msg41.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Do you mean that I am not in earnest?
BODY

msg42 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg42.send_msg
    msg42.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Now don't talk in that way, Socrates, but let me have your
real opinion; I adjure you, by Zeus, the god of friendship, to tell me
whether you think that any Hellene could have said more or spoken better
on the same subject.
BODY

msg43 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg43.send_msg
    msg43.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Well, but are you and I expected to praise the sentiments
of the author, or only the clearness, and roundness, and finish, and
tournure of the language? As to the first I willingly submit to your
better judgment, for I am not worthy to form an opinion, having only
attended to the rhetorical manner; and I was doubting whether this could
have been defended even by Lysias himself; I thought, though I speak
under correction, that he repeated himself two or three times, either
from want of words or from want of pains; and also, he appeared to me
ostentatiously to exult in showing how well he could say the same thing
in two or three ways.
BODY

msg44 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg44.send_msg
    msg44.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Nonsense, Socrates; what you call repetition was the especial
merit of the speech; for he omitted no topic of which the subject
rightly allowed, and I do not think that any one could have spoken
better or more exhaustively.
BODY

msg45 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg45.send_msg
    msg45.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 There I cannot go along with you. Ancient sages, men and
women, who have spoken and written of these things, would rise up in
judgment against me, if out of complaisance I assented to you.
BODY

msg46 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg46.send_msg
    msg46.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 Who are they, and where did you hear anything better than
this?
BODY

msg47 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.years.ago
    })

    msg47.send_msg
    msg47.update({updated_at: 6.years.ago})




body_str = <<-BODY 
 I am sure that I must have heard; but at this moment I do not
remember from whom; perhaps from Sappho the fair, or Anacreon the wise;
or, possibly, from a prose writer. Why do I say so? Why, because I
perceive that my bosom is full, and that I could make another speech as
good as that of Lysias, and different. Now I am certain that this is
not an invention of my own, who am well aware that I know nothing, and
therefore I can only infer that I have been filled through the ears,
like a pitcher, from the waters of another, though I have actually
forgotten in my stupidity who was my informant.
BODY

msg48 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg48.send_msg
    msg48.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 That is grand:--but never mind where you heard the discourse
or from whom; let that be a mystery not to be divulged even at my
earnest desire. Only, as you say, promise to make another and better
oration, equal in length and entirely new, on the same subject; and I,
like the nine Archons, will promise to set up a golden image at Delphi,
not only of myself, but of you, and as large as life.
BODY

msg49 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg49.send_msg
    msg49.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 You are a dear golden ass if you suppose me to mean that
Lysias has altogether missed the mark, and that I can make a speech from
which all his arguments are to be excluded. The worst of authors will
say something which is to the point. Who, for example, could speak on
this thesis of yours without praising the discretion of the non-lover
and blaming the indiscretion of the lover? These are the commonplaces of
the subject which must come in (for what else is there to be said?) and
must be allowed and excused; the only merit is in the arrangement of
them, for there can be none in the invention; but when you leave the
commonplaces, then there may be some originality.
BODY

msg50 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg50.send_msg
    msg50.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 I admit that there is reason in what you say, and I too will
be reasonable, and will allow you to start with the premiss that the
lover is more disordered in his wits than the non-lover; if in what
remains you make a longer and better speech than Lysias, and use other
arguments, then I say again, that a statue you shall have of beaten
gold, and take your place by the colossal offerings of the Cypselids at
Olympia.
BODY

msg51 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg51.send_msg
    msg51.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 How profoundly in earnest is the lover, because to tease him I
lay a finger upon his love! And so, Phaedrus, you really imagine that I
am going to improve upon the ingenuity of Lysias?
BODY

msg52 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg52.send_msg
    msg52.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 There I have you as you had me, and you must just speak 'as
you best can.' Do not let us exchange 'tu quoque' as in a farce, or
compel me to say to you as you said to me, 'I know Socrates as well as
I know myself, and he was wanting to speak, but he gave himself airs.'
Rather I would have you consider that from this place we stir not until
you have unbosomed yourself of the speech; for here are we all alone,
and I am stronger, remember, and younger than you:--Wherefore perpend,
and do not compel me to use violence.
BODY

msg53 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg53.send_msg
    msg53.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 But, my sweet Phaedrus, how ridiculous it would be of me to
compete with Lysias in an extempore speech! He is a master in his art
and I am an untaught man.
BODY

msg54 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg54.send_msg
    msg54.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 You see how matters stand; and therefore let there be no more
pretences; for, indeed, I know the word that is irresistible.
BODY

msg55 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg55.send_msg
    msg55.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 Then don't say it.
BODY

msg56 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg56.send_msg
    msg56.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 Yes, but I will; and my word shall be an oath. 'I say, or
rather swear'--but what god will be witness of my oath?--'By this
plane-tree I swear, that unless you repeat the discourse here in the
face of this very plane-tree, I will never tell you another; never let
you have word of another!'
BODY

msg57 = Pcon7.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.years.ago
    })

    msg57.send_msg
    msg57.update({updated_at: 5.years.ago})




body_str = <<-BODY 
 Villain! I am conquered; the poor lover of discourse has no
more to say.
BODY

msg58 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg58.send_msg
    msg58.update({updated_at: 4.years.ago})




      
        Scon7.update({
                             message_timestamp: 4.years.ago,
                             read: true
                           }) 
        Pcon7.update({
                             message_timestamp: 4.years.ago,
                             read: true
                           }) 


      MetCon8 = MetaConversation.create();

      Scon8 = soc.conversations.create(title: "Then why are you still at", meta_conversation: MetCon8)
      Pcon8 =  phaedrus.conversations.create(title: "Then why are you still at", meta_conversation: MetCon8)
body_str = <<-BODY 
 Then why are you still at your tricks?
BODY

msg59 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg59.send_msg
    msg59.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 I am not going to play tricks now that you have taken the
oath, for I cannot allow myself to be starved.
BODY

msg60 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg60.send_msg
    msg60.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 Proceed.
BODY

msg61 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg61.send_msg
    msg61.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 Shall I tell you what I will do?
BODY

msg62 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg62.send_msg
    msg62.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 What?
BODY

msg63 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg63.send_msg
    msg63.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 I will veil my face and gallop through the discourse as fast
as I can, for if I see you I shall feel ashamed and not know what to
say.
BODY

msg64 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg64.send_msg
    msg64.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 Only go on and you may do anything else which you please.
BODY

msg65 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg65.send_msg
    msg65.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 Come, O ye Muses, melodious, as ye are called, whether you
have received this name from the character of your strains, or because
the Melians are a musical race, help, O help me in the tale which my
good friend here desires me to rehearse, in order that his friend whom
he always deemed wise may seem to him to be wiser than ever.
BODY

msg66 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg66.send_msg
    msg66.update({updated_at: 4.years.ago})




body_str = <<-BODY 
--
BODY









body_str = <<-BODY 
 Yes, Socrates, you seem to have a very unusual flow of words.
BODY

msg68 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg68.send_msg
    msg68.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 Listen to me, then, in silence; for surely the place is holy;
so that you must not wonder, if, as I proceed, I appear to be in a
divine fury, for already I am getting into dithyrambics.
BODY

msg69 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.years.ago
    })

    msg69.send_msg
    msg69.update({updated_at: 4.years.ago})




body_str = <<-BODY 
 Nothing can be truer.
BODY

msg70 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg70.send_msg
    msg70.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 The responsibility rests with you. But hear what follows, and
perhaps the fit may be averted; all is in their hands above. I will go
on talking to my youth. Listen:--
BODY

msg71 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg71.send_msg
    msg71.update({updated_at: 3.years.ago})














body_str = <<-BODY 

BODY







body_str = <<-BODY 
 I thought that you were only half-way and were going to make a
similar speech about all the advantages of accepting the non-lover. Why
do you not proceed?
BODY

msg73 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg73.send_msg
    msg73.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 Does not your simplicity observe that I have got out of
dithyrambics into heroics, when only uttering a censure on the lover?
And if I am to add the praises of the non-lover what will become of me?
Do you not perceive that I am already overtaken by the Nymphs to whom
you have mischievously exposed me? And therefore I will only add that
the non-lover has all the advantages in which the lover is accused of
being deficient. And now I will say no more; there has been enough of
both of them. Leaving the tale to its fate, I will cross the river and
make the best of my way home, lest a worse thing be inflicted upon me by
you.
BODY

msg74 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg74.send_msg
    msg74.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 Not yet, Socrates; not until the heat of the day has passed;
do you not see that the hour is almost noon? there is the midday sun
standing still, as people say, in the meridian. Let us rather stay and
talk over what has been said, and then return in the cool.
BODY

msg75 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg75.send_msg
    msg75.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 Your love of discourse, Phaedrus, is superhuman, simply
marvellous, and I do not believe that there is any one of your
contemporaries who has either made or in one way or another has
compelled others to make an equal number of speeches. I would except
Simmias the Theban, but all the rest are far behind you. And now I do
verily believe that you have been the cause of another.
BODY

msg76 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg76.send_msg
    msg76.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 That is good news. But what do you mean?
BODY

msg77 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg77.send_msg
    msg77.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 I mean to say that as I was about to cross the stream the
usual sign was given to me,--that sign which always forbids, but never
bids, me to do anything which I am going to do; and I thought that I
heard a voice saying in my ear that I had been guilty of impiety,
and that I must not go away until I had made an atonement. Now I am a
diviner, though not a very good one, but I have enough religion for my
own use, as you might say of a bad writer--his writing is good enough
for him; and I am beginning to see that I was in error. O my friend, how
prophetic is the human soul! At the time I had a sort of misgiving, and,
like Ibycus, 'I was troubled; I feared that I might be buying honour
from men at the price of sinning against the gods.' Now I recognize my
error.
BODY

msg78 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg78.send_msg
    msg78.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 What error?
BODY

msg79 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg79.send_msg
    msg79.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 That was a dreadful speech which you brought with you, and you
made me utter one as bad.
BODY

msg80 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.years.ago
    })

    msg80.send_msg
    msg80.update({updated_at: 3.years.ago})




body_str = <<-BODY 
 How so?
BODY

msg81 = Pcon8.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg81.send_msg
    msg81.update({updated_at: 2.years.ago})




      
        Scon8.update({
                             message_timestamp: 2.years.ago,
                             read: true
                           }) 
        Pcon8.update({
                             message_timestamp: 2.years.ago,
                             read: true
                           }) 


      MetCon9 = MetaConversation.create();

      Scon9 = soc.conversations.create(title: "It was foolish, I say,--to a", meta_conversation: MetCon9)
      Pcon9 =  phaedrus.conversations.create(title: "It was foolish, I say,--to a", meta_conversation: MetCon9)
body_str = <<-BODY 
 It was foolish, I say,--to a certain extent, impious; can
anything be more dreadful?
BODY

msg82 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg82.send_msg
    msg82.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 Nothing, if the speech was really such as you describe.
BODY

msg83 = Pcon9.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg83.send_msg
    msg83.update({updated_at: 2.years.ago})




      
        Scon9.update({
                             message_timestamp: 2.years.ago,
                             read: true
                           }) 
        Pcon9.update({
                             message_timestamp: 2.years.ago,
                             read: true
                           }) 


      MetCon10 = MetaConversation.create();

      Scon10 = soc.conversations.create(title: "Well, and is not Eros the", meta_conversation: MetCon10)
      Pcon10 =  phaedrus.conversations.create(title: "Well, and is not Eros the", meta_conversation: MetCon10)
body_str = <<-BODY 
 Well, and is not Eros the son of Aphrodite, and a god?
BODY

msg84 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg84.send_msg
    msg84.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 So men say.
BODY

msg85 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg85.send_msg
    msg85.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 But that was not acknowledged by Lysias in his speech, nor by
you in that other speech which you by a charm drew from my lips. For if
love be, as he surely is, a divinity, he cannot be evil. Yet this was
the error of both the speeches. There was also a simplicity about them
which was refreshing; having no truth or honesty in them, nevertheless
they pretended to be something, hoping to succeed in deceiving the
manikins of earth and gain celebrity among them. Wherefore I must have
a purgation. And I bethink me of an ancient purgation of mythological
error which was devised, not by Homer, for he never had the wit to
discover why he was blind, but by Stesichorus, who was a philosopher and
knew the reason why; and therefore, when he lost his eyes, for that was
the penalty which was inflicted upon him for reviling the lovely Helen,
he at once purged himself. And the purgation was a recantation, which
began thus,--
BODY

msg86 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg86.send_msg
    msg86.update({updated_at: 2.years.ago})








body_str = <<-BODY 
 Nothing could be more agreeable to me than to hear you say so.
BODY

msg87 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg87.send_msg
    msg87.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 Only think, my good Phaedrus, what an utter want of delicacy
was shown in the two discourses; I mean, in my own and in that which you
recited out of the book. Would not any one who was himself of a noble
and gentle nature, and who loved or ever had loved a nature like his
own, when we tell of the petty causes of lovers' jealousies, and of
their exceeding animosities, and of the injuries which they do to their
beloved, have imagined that our ideas of love were taken from some haunt
of sailors to which good manners were unknown--he would certainly never
have admitted the justice of our censure?
BODY

msg88 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg88.send_msg
    msg88.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 I dare say not, Socrates.
BODY

msg89 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg89.send_msg
    msg89.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 Therefore, because I blush at the thought of this person, and
also because I am afraid of Love himself, I desire to wash the brine out
of my ears with water from the spring; and I would counsel Lysias not to
delay, but to write another discourse, which shall prove that 'ceteris
paribus' the lover ought to be accepted rather than the non-lover.
BODY

msg90 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg90.send_msg
    msg90.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 Be assured that he shall. You shall speak the praises of the
lover, and Lysias shall be compelled by me to write another discourse on
the same theme.
BODY

msg91 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg91.send_msg
    msg91.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 You will be true to your nature in that, and therefore I
believe you.
BODY

msg92 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg92.send_msg
    msg92.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 Speak, and fear not.
BODY

msg93 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg93.send_msg
    msg93.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 But where is the fair youth whom I was addressing before, and
who ought to listen now; lest, if he hear me not, he should accept a
non-lover before he knows what he is doing?
BODY

msg94 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg94.send_msg
    msg94.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 He is close at hand, and always at your service.
BODY

msg95 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.years.ago
    })

    msg95.send_msg
    msg95.update({updated_at: 2.years.ago})




body_str = <<-BODY 
 Know then, fair youth, that the former discourse was the word
of Phaedrus, the son of Vain Man, who dwells in the city of Myrrhina
(Myrrhinusius). And this which I am about to utter is the recantation of
Stesichorus the son of Godly Man (Euphemus), who comes from the town of
Desire (Himera), and is to the following effect: 'I told a lie when I
said' that the beloved ought to accept the non-lover when he might have
the lover, because the one is sane, and the other mad. It might be so
if madness were simply an evil; but there is also a madness which is a
divine gift, and the source of the chiefest blessings granted to
men. For prophecy is a madness, and the prophetess at Delphi and the
priestesses at Dodona when out of their senses have conferred great
benefits on Hellas, both in public and private life, but when in their
senses few or none. And I might also tell you how the Sibyl and other
inspired persons have given to many an one many an intimation of the
future which has saved them from falling. But it would be tedious to
speak of what every one knows.
BODY

msg96 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.years.ago
    })

    msg96.send_msg
    msg96.update({updated_at: 1.years.ago})






body_str = <<-BODY 
--
BODY







body_str = <<-BODY 
--and
this is the hour of agony and extremest conflict for the soul. For the
immortals, when they are at the end of their course, go forth and stand
upon the outside of heaven, and the revolution of the spheres carries
them round, and they behold the things beyond. But of the heaven which
is above the heavens, what earthly poet ever did or ever will sing
worthily? It is such as I will describe; for I must dare to speak the
truth, when truth is my theme. There abides the very being with which
true knowledge is concerned; the colourless, formless, intangible
essence, visible only to mind, the pilot of the soul. The divine
intelligence, being nurtured upon mind and pure knowledge, and the
intelligence of every soul which is capable of receiving the food proper
to it, rejoices at beholding reality, and once more gazing upon truth,
is replenished and made glad, until the revolution of the worlds
brings her round again to the same place. In the revolution she beholds
justice, and temperance, and knowledge absolute, not in the form of
generation or of relation, which men call existence, but knowledge
absolute in existence absolute; and beholding the other true existences
in like manner, and feasting upon them, she passes down into the
interior of the heavens and returns home; and there the charioteer
putting up his horses at the stall, gives them ambrosia to eat and
nectar to drink.
BODY





body_str = <<-BODY 
--and they
who choose this life three times in succession have wings given them,
and go away at the end of three thousand years. But the others (The
philosopher alone is not subject to judgment (krisis), for he has never
lost the vision of truth.) receive judgment when they have completed
their first life, and after the judgment they go, some of them to the
houses of correction which are under the earth, and are punished; others
to some place in heaven whither they are lightly borne by justice, and
there they live in a manner worthy of the life which they led here when
in the form of men. And at the end of the first thousand years the good
souls and also the evil souls both come to draw lots and choose their
second life, and they may take any which they please. The soul of a man
may pass into the life of a beast, or from the beast return again into
the man. But the soul which has never seen the truth will not pass into
the human form. For a man must have intelligence of universals, and be
able to proceed from the many particulars of sense to one conception of
reason;--this is the recollection of those things which our soul once
saw while following God--when regardless of that which we now call being
she raised her head up towards the true being. And therefore the mind
of the philosopher alone has wings; and this is just, for he is always,
according to the measure of his abilities, clinging in recollection to
those things in which God abides, and in beholding which He is what He
is. And he who employs aright these memories is ever being initiated
into perfect mysteries and alone becomes truly perfect. But, as he
forgets earthly interests and is rapt in the divine, the vulgar deem him
mad, and rebuke him; they do not see that he is inspired.
BODY



body_str = <<-BODY 

they are seen through a glass dimly; and there are few who, going to the
images, behold in them the realities, and these only with difficulty.
There was a time when with the rest of the happy band they saw beauty
shining in brightness,--we philosophers following in the train of Zeus,
others in company with other gods; and then we beheld the beatific
vision and were initiated into a mystery which may be truly called most
blessed, celebrated by us in our state of innocence, before we had
any experience of evils to come, when we were admitted to the sight
of apparitions innocent and simple and calm and happy, which we beheld
shining in pure light, pure ourselves and not yet enshrined in that
living tomb which we carry about, now that we are imprisoned in the
body, like an oyster in his shell. Let me linger over the memory of
scenes which have passed away.
BODY



body_str = <<-BODY 

BODY







body_str = <<-BODY 
--
BODY



body_str = <<-BODY 
 the division may remain, but I have not yet explained in
what the goodness or badness of either consists, and to that I will
now proceed. The right-hand horse is upright and cleanly made; he has a
lofty neck and an aquiline nose; his colour is white, and his eyes dark;
he is a lover of honour and modesty and temperance, and the follower
of true glory; he needs no touch of the whip, but is guided by word and
admonition only. The other is a crooked lumbering animal, put together
anyhow; he has a short thick neck; he is flat-faced and of a dark
colour, with grey eyes and blood-red complexion (Or with grey and
blood-shot eyes.); the mate of insolence and pride, shag-eared and deaf,
hardly yielding to whip and spur. Now when the charioteer beholds the
vision of love, and has his whole soul warmed through sense, and is full
of the prickings and ticklings of desire, the obedient steed, then
as always under the government of shame, refrains from leaping on the
beloved; but the other, heedless of the pricks and of the blows of
the whip, plunges and runs away, giving all manner of trouble to his
companion and the charioteer, whom he forces to approach the beloved and
to remember the joys of love. They at first indignantly oppose him and
will not be urged on to do terrible and unlawful deeds; but at last,
when he persists in plaguing them, they yield and agree to do as he bids
them. And now they are at the spot and behold the flashing beauty of the
beloved; which when the charioteer sees, his memory is carried to the
true beauty, whom he beholds in company with Modesty like an image
placed upon a holy pedestal. He sees her, but he is afraid and falls
backwards in adoration, and by his fall is compelled to pull back the
reins with such violence as to bring both the steeds on their haunches,
the one willing and unresisting, the unruly one very unwilling; and when
they have gone back a little, the one is overcome with shame and wonder,
and his whole soul is bathed in perspiration; the other, when the
pain is over which the bridle and the fall had given him, having with
difficulty taken breath, is full of wrath and reproaches, which he
heaps upon the charioteer and his fellow-steed, for want of courage
and manhood, declaring that they have been false to their agreement and
guilty of desertion. Again they refuse, and again he urges them on, and
will scarce yield to their prayer that he would wait until another time.
When the appointed hour comes, they make as if they had forgotten, and
he reminds them, fighting and neighing and dragging them on, until at
length he on the same thoughts intent, forces them to draw near again.
And when they are near he stoops his head and puts up his tail, and
takes the bit in his teeth and pulls shamelessly. Then the charioteer is
worse off than ever; he falls back like a racer at the barrier, and with
a still more violent wrench drags the bit out of the teeth of the wild
steed and covers his abusive tongue and jaws with blood, and forces his
legs and haunches to the ground and punishes him sorely. And when this
has happened several times and the villain has ceased from his wanton
way, he is tamed and humbled, and follows the will of the charioteer,
and when he sees the beautiful one he is ready to die of fear. And from
that time forward the soul of the lover follows the beloved in modesty
and holy fear.
BODY









body_str = <<-BODY 
 I join in the prayer, Socrates, and say with you, if this
be for my good, may your words come to pass. But why did you make your
second oration so much finer than the first? I wonder why. And I begin
to be afraid that I shall lose conceit of Lysias, and that he will
appear tame in comparison, even if he be willing to put another as fine
and as long as yours into the field, which I doubt. For quite lately one
of your politicians was abusing him on this very account; and called
him a 'speech writer' again and again. So that a feeling of pride may
probably induce him to give up writing speeches.
BODY

msg104 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.years.ago
    })

    msg104.send_msg
    msg104.update({updated_at: 1.years.ago})




body_str = <<-BODY 
 What a very amusing notion! But I think, my young man,
that you are much mistaken in your friend if you imagine that he
is frightened at a little noise; and, possibly, you think that his
assailant was in earnest?
BODY

msg105 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.years.ago
    })

    msg105.send_msg
    msg105.update({updated_at: 1.years.ago})




body_str = <<-BODY 
 I thought, Socrates, that he was. And you are aware that the
greatest and most influential statesmen are ashamed of writing speeches
and leaving them in a written form, lest they should be called Sophists
by posterity.
BODY

msg106 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.years.ago
    })

    msg106.send_msg
    msg106.update({updated_at: 1.years.ago})




body_str = <<-BODY 
 You seem to be unconscious, Phaedrus, that the 'sweet elbow'
(A proverb, like 'the grapes are sour,' applied to pleasures which
cannot be had, meaning sweet things which, like the elbow, are out of
the reach of the mouth. The promised pleasure turns out to be a long and
tedious affair.) of the proverb is really the long arm of the Nile. And
you appear to be equally unaware of the fact that this sweet elbow
of theirs is also a long arm. For there is nothing of which our great
politicians are so fond as of writing speeches and bequeathing them to
posterity. And they add their admirers' names at the top of the writing,
out of gratitude to them.
BODY

msg107 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 12.months.ago
    })

    msg107.send_msg
    msg107.update({updated_at: 12.months.ago})




body_str = <<-BODY 
 What do you mean? I do not understand.
BODY

msg108 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg108.send_msg
    msg108.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 Why, do you not know that when a politician writes, he begins
with the names of his approvers?
BODY

msg109 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg109.send_msg
    msg109.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 How so?
BODY

msg110 = Pcon10.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg110.send_msg
    msg110.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 Why, he begins in this manner: 'Be it enacted by the senate,
the people, or both, on the motion of a certain person,' who is our
author; and so putting on a serious face, he proceeds to display his own
wisdom to his admirers in what is often a long and tedious composition.
Now what is that sort of thing but a regular piece of authorship?
BODY

msg111 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg111.send_msg
    msg111.update({updated_at: 11.months.ago})




      
        Scon10.update({
                             message_timestamp: 11.months.ago,
                             read: true
                           }) 
        Pcon10.update({
                             message_timestamp: 11.months.ago,
                             read: true
                           }) 


      MetCon11 = MetaConversation.create();

      Scon11 = soc.conversations.create(title: "True.", meta_conversation: MetCon11)
      Pcon11 =  phaedrus.conversations.create(title: "True.", meta_conversation: MetCon11)
body_str = <<-BODY 
 True.
BODY

msg112 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg112.send_msg
    msg112.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 And if the law is finally approved, then the author leaves the
theatre in high delight; but if the law is rejected and he is done out
of his speech-making, and not thought good enough to write, then he and
his party are in mourning.
BODY

msg113 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg113.send_msg
    msg113.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 Very true.
BODY

msg114 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg114.send_msg
    msg114.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 So far are they from despising, or rather so highly do they
value the practice of writing.
BODY

msg115 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.months.ago
    })

    msg115.send_msg
    msg115.update({updated_at: 11.months.ago})




body_str = <<-BODY 
 No doubt.
BODY

msg116 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg116.send_msg
    msg116.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 And when the king or orator has the power, as Lycurgus or
Solon or Darius had, of attaining an immortality or authorship in a
state, is he not thought by posterity, when they see his compositions,
and does he not think himself, while he is yet alive, to be a god?
BODY

msg117 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg117.send_msg
    msg117.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Very true.
BODY

msg118 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg118.send_msg
    msg118.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Then do you think that any one of this class, however
ill-disposed, would reproach Lysias with being an author?
BODY

msg119 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg119.send_msg
    msg119.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Not upon your view; for according to you he would be casting a
slur upon his own favourite pursuit.
BODY

msg120 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg120.send_msg
    msg120.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Any one may see that there is no disgrace in the mere fact of
writing.
BODY

msg121 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg121.send_msg
    msg121.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Certainly not.
BODY

msg122 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg122.send_msg
    msg122.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 The disgrace begins when a man writes not well, but badly.
BODY

msg123 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg123.send_msg
    msg123.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Clearly.
BODY

msg124 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg124.send_msg
    msg124.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 And what is well and what is badly--need we ask Lysias, or any
other poet or orator, who ever wrote or will write either a political or
any other work, in metre or out of metre, poet or prose writer, to teach
us this?
BODY

msg125 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg125.send_msg
    msg125.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 Need we? For what should a man live if not for the pleasures
of discourse? Surely not for the sake of bodily pleasures, which almost
always have previous pain as a condition of them, and therefore are
rightly called slavish.
BODY

msg126 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.months.ago
    })

    msg126.send_msg
    msg126.update({updated_at: 10.months.ago})




body_str = <<-BODY 
 There is time enough. And I believe that the grasshoppers
chirruping after their manner in the heat of the sun over our heads are
talking to one another and looking down at us. What would they say if
they saw that we, like the many, are not conversing, but slumbering at
mid-day, lulled by their voices, too indolent to think? Would they not
have a right to laugh at us? They might imagine that we were slaves,
who, coming to rest at a place of resort of theirs, like sheep lie
asleep at noon around the well. But if they see us discoursing, and
like Odysseus sailing past them, deaf to their siren voices, they may
perhaps, out of respect, give us of the gifts which they receive from
the gods that they may impart them to men.
BODY

msg127 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg127.send_msg
    msg127.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 What gifts do you mean? I never heard of any.
BODY

msg128 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg128.send_msg
    msg128.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 A lover of music like yourself ought surely to have heard the
story of the grasshoppers, who are said to have been human beings in
an age before the Muses. And when the Muses came and song appeared they
were ravished with delight; and singing always, never thought of eating
and drinking, until at last in their forgetfulness they died. And now
they live again in the grasshoppers; and this is the return which the
Muses make to them--they neither hunger, nor thirst, but from the hour
of their birth are always singing, and never eating or drinking; and
when they die they go and inform the Muses in heaven who honours them on
earth. They win the love of Terpsichore for the dancers by their report
of them; of Erato for the lovers, and of the other Muses for those who
do them honour, according to the several ways of honouring them;--of
Calliope the eldest Muse and of Urania who is next to her, for the
philosophers, of whose music the grasshoppers make report to them; for
these are the Muses who are chiefly concerned with heaven and thought,
divine as well as human, and they have the sweetest utterance. For many
reasons, then, we ought always to talk and not to sleep at mid-day.
BODY

msg129 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg129.send_msg
    msg129.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 Let us talk.
BODY

msg130 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg130.send_msg
    msg130.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 Shall we discuss the rules of writing and speech as we were
proposing?
BODY

msg131 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg131.send_msg
    msg131.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 Very good.
BODY

msg132 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg132.send_msg
    msg132.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 In good speaking should not the mind of the speaker know the
truth of the matter about which he is going to speak?
BODY

msg133 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg133.send_msg
    msg133.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 And yet, Socrates, I have heard that he who would be an orator
has nothing to do with true justice, but only with that which is likely
to be approved by the many who sit in judgment; nor with the truly good
or honourable, but only with opinion about them, and that from opinion
comes persuasion, and not from the truth.
BODY

msg134 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg134.send_msg
    msg134.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 The words of the wise are not to be set aside; for there is
probably something in them; and therefore the meaning of this saying is
not hastily to be dismissed.
BODY

msg135 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg135.send_msg
    msg135.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 Very true.
BODY

msg136 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg136.send_msg
    msg136.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 Let us put the matter thus:--Suppose that I persuaded you
to buy a horse and go to the wars. Neither of us knew what a horse was
like, but I knew that you believed a horse to be of tame animals the one
which has the longest ears.
BODY

msg137 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg137.send_msg
    msg137.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 That would be ridiculous.
BODY

msg138 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg138.send_msg
    msg138.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 There is something more ridiculous coming:--Suppose, further,
that in sober earnest I, having persuaded you of this, went and composed
a speech in honour of an ass, whom I entitled a horse beginning: 'A
noble animal and a most useful possession, especially in war, and you
may get on his back and fight, and he will carry baggage or anything.'
BODY

msg139 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.months.ago
    })

    msg139.send_msg
    msg139.update({updated_at: 9.months.ago})




body_str = <<-BODY 
 How ridiculous!
BODY

msg140 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg140.send_msg
    msg140.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 Ridiculous! Yes; but is not even a ridiculous friend better
than a cunning enemy?
BODY

msg141 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg141.send_msg
    msg141.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg142 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg142.send_msg
    msg142.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 And when the orator instead of putting an ass in the place
of a horse, puts good for evil, being himself as ignorant of their true
nature as the city on which he imposes is ignorant; and having studied
the notions of the multitude, falsely persuades them not about 'the
shadow of an ass,' which he confounds with a horse, but about good which
he confounds with evil,--what will be the harvest which rhetoric will be
likely to gather after the sowing of that seed?
BODY

msg143 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg143.send_msg
    msg143.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 The reverse of good.
BODY

msg144 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg144.send_msg
    msg144.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 But perhaps rhetoric has been getting too roughly handled by
us, and she might answer: What amazing nonsense you are talking! As if I
forced any man to learn to speak in ignorance of the truth! Whatever
my advice may be worth, I should have told him to arrive at the truth
first, and then come to me. At the same time I boldly assert that mere
knowledge of the truth will not give you the art of persuasion.
BODY

msg145 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg145.send_msg
    msg145.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 There is reason in the lady's defence of herself.
BODY

msg146 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg146.send_msg
    msg146.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 Quite true; if only the other arguments which remain to be
brought up bear her witness that she is an art at all. But I seem to
hear them arraying themselves on the opposite side, declaring that she
speaks falsely, and that rhetoric is a mere routine and trick, not an
art. Lo! a Spartan appears, and says that there never is nor ever will
be a real art of speaking which is divorced from the truth.
BODY

msg147 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg147.send_msg
    msg147.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 And what are these arguments, Socrates? Bring them out that we
may examine them.
BODY

msg148 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg148.send_msg
    msg148.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 Come out, fair children, and convince Phaedrus, who is the
father of similar beauties, that he will never be able to speak about
anything as he ought to speak unless he have a knowledge of philosophy.
And let Phaedrus answer you.
BODY

msg149 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg149.send_msg
    msg149.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 Put the question.
BODY

msg150 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.months.ago
    })

    msg150.send_msg
    msg150.update({updated_at: 8.months.ago})




body_str = <<-BODY 
 Is not rhetoric, taken generally, a universal art of
enchanting the mind by arguments; which is practised not only in courts
and public assemblies, but in private houses also, having to do with
all matters, great as well as small, good and bad alike, and is in all
equally right, and equally to be esteemed--that is what you have heard?
BODY

msg151 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg151.send_msg
    msg151.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Nay, not exactly that; I should say rather that I have heard
the art confined to speaking and writing in lawsuits, and to speaking in
public assemblies--not extended farther.
BODY

msg152 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg152.send_msg
    msg152.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Then I suppose that you have only heard of the rhetoric of
Nestor and Odysseus, which they composed in their leisure hours when at
Troy, and never of the rhetoric of Palamedes?
BODY

msg153 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg153.send_msg
    msg153.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 No more than of Nestor and Odysseus, unless Gorgias is your
Nestor, and Thrasymachus or Theodorus your Odysseus.
BODY

msg154 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg154.send_msg
    msg154.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Perhaps that is my meaning. But let us leave them. And do
you tell me, instead, what are plaintiff and defendant doing in a law
court--are they not contending?
BODY

msg155 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg155.send_msg
    msg155.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Exactly so.
BODY

msg156 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg156.send_msg
    msg156.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 About the just and unjust--that is the matter in dispute?
BODY

msg157 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg157.send_msg
    msg157.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Yes.
BODY

msg158 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg158.send_msg
    msg158.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 And a professor of the art will make the same thing appear to
the same persons to be at one time just, at another time, if he is so
inclined, to be unjust?
BODY

msg159 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg159.send_msg
    msg159.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Exactly.
BODY

msg160 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg160.send_msg
    msg160.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 And when he speaks in the assembly, he will make the same
things seem good to the city at one time, and at another time the
reverse of good?
BODY

msg161 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg161.send_msg
    msg161.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 That is true.
BODY

msg162 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg162.send_msg
    msg162.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Have we not heard of the Eleatic Palamedes (Zeno), who has an
art of speaking by which he makes the same things appear to his hearers
like and unlike, one and many, at rest and in motion?
BODY

msg163 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg163.send_msg
    msg163.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 Very true.
BODY

msg164 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg164.send_msg
    msg164.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 The art of disputation, then, is not confined to the courts
and the assembly, but is one and the same in every use of language; this
is the art, if there be such an art, which is able to find a likeness of
everything to which a likeness can be found, and draws into the light of
day the likenesses and disguises which are used by others?
BODY

msg165 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.months.ago
    })

    msg165.send_msg
    msg165.update({updated_at: 7.months.ago})




body_str = <<-BODY 
 How do you mean?
BODY

msg166 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg166.send_msg
    msg166.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 Let me put the matter thus: When will there be more chance of
deception--when the difference is large or small?
BODY

msg167 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg167.send_msg
    msg167.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 When the difference is small.
BODY

msg168 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg168.send_msg
    msg168.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 And you will be less likely to be discovered in passing by
degrees into the other extreme than when you go all at once?
BODY

msg169 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg169.send_msg
    msg169.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 Of course.
BODY

msg170 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg170.send_msg
    msg170.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 He, then, who would deceive others, and not be deceived, must
exactly know the real likenesses and differences of things?
BODY

msg171 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg171.send_msg
    msg171.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 He must.
BODY

msg172 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg172.send_msg
    msg172.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 And if he is ignorant of the true nature of any subject, how
can he detect the greater or less degree of likeness in other things to
that of which by the hypothesis he is ignorant?
BODY

msg173 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg173.send_msg
    msg173.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 He cannot.
BODY

msg174 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg174.send_msg
    msg174.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 And when men are deceived and their notions are at
variance with realities, it is clear that the error slips in through
resemblances?
BODY

msg175 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg175.send_msg
    msg175.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 Yes, that is the way.
BODY

msg176 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.months.ago
    })

    msg176.send_msg
    msg176.update({updated_at: 6.months.ago})




body_str = <<-BODY 
 Then he who would be a master of the art must understand the
real nature of everything; or he will never know either how to make
the gradual departure from truth into the opposite of truth which is
effected by the help of resemblances, or how to avoid it?
BODY

msg177 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg177.send_msg
    msg177.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 He will not.
BODY

msg178 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg178.send_msg
    msg178.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 He then, who being ignorant of the truth aims at appearances,
will only attain an art of rhetoric which is ridiculous and is not an
art at all?
BODY

msg179 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg179.send_msg
    msg179.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 That may be expected.
BODY

msg180 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg180.send_msg
    msg180.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 Shall I propose that we look for examples of art and want of
art, according to our notion of them, in the speech of Lysias which you
have in your hand, and in my own speech?
BODY

msg181 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg181.send_msg
    msg181.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 Nothing could be better; and indeed I think that our previous
argument has been too abstract and wanting in illustrations.
BODY

msg182 = Pcon11.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg182.send_msg
    msg182.update({updated_at: 5.months.ago})




      
        Scon11.update({
                             message_timestamp: 5.months.ago,
                             read: true
                           }) 
        Pcon11.update({
                             message_timestamp: 5.months.ago,
                             read: true
                           }) 


      MetCon12 = MetaConversation.create();

      Scon12 = soc.conversations.create(title: "Yes; and the two speeches happen", meta_conversation: MetCon12)
      Pcon12 =  phaedrus.conversations.create(title: "Yes; and the two speeches happen", meta_conversation: MetCon12)
body_str = <<-BODY 
 Yes; and the two speeches happen to afford a very good example
of the way in which the speaker who knows the truth may, without any
serious purpose, steal away the hearts of his hearers. This piece
of good-fortune I attribute to the local deities; and, perhaps, the
prophets of the Muses who are singing over our heads may have imparted
their inspiration to me. For I do not imagine that I have any rhetorical
art of my own.
BODY

msg183 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg183.send_msg
    msg183.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 Granted; if you will only please to get on.
BODY

msg184 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg184.send_msg
    msg184.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 Suppose that you read me the first words of Lysias' speech.
BODY

msg185 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg185.send_msg
    msg185.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 'You know how matters stand with me, and how, as I conceive,
they might be arranged for our common interest; and I maintain that I
ought not to fail in my suit, because I am not your lover. For lovers
repent--'
BODY

msg186 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg186.send_msg
    msg186.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 Enough:--Now, shall I point out the rhetorical error of those
words?
BODY

msg187 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.months.ago
    })

    msg187.send_msg
    msg187.update({updated_at: 5.months.ago})




body_str = <<-BODY 
 Yes.
BODY

msg188 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg188.send_msg
    msg188.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 Every one is aware that about some things we are agreed,
whereas about other things we differ.
BODY

msg189 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg189.send_msg
    msg189.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 I think that I understand you; but will you explain yourself?
BODY

msg190 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg190.send_msg
    msg190.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 When any one speaks of iron and silver, is not the same thing
present in the minds of all?
BODY

msg191 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg191.send_msg
    msg191.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg192 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg192.send_msg
    msg192.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 But when any one speaks of justice and goodness we part
company and are at odds with one another and with ourselves?
BODY

msg193 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg193.send_msg
    msg193.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 Precisely.
BODY

msg194 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg194.send_msg
    msg194.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 Then in some things we agree, but not in others?
BODY

msg195 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg195.send_msg
    msg195.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 That is true.
BODY

msg196 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg196.send_msg
    msg196.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 In which are we more likely to be deceived, and in which has
rhetoric the greater power?
BODY

msg197 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg197.send_msg
    msg197.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 Clearly, in the uncertain class.
BODY

msg198 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg198.send_msg
    msg198.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 Then the rhetorician ought to make a regular division, and
acquire a distinct notion of both classes, as well of that in which the
many err, as of that in which they do not err?
BODY

msg199 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.months.ago
    })

    msg199.send_msg
    msg199.update({updated_at: 4.months.ago})




body_str = <<-BODY 
 He who made such a distinction would have an excellent
principle.
BODY

msg200 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg200.send_msg
    msg200.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Yes; and in the next place he must have a keen eye for the
observation of particulars in speaking, and not make a mistake about the
class to which they are to be referred.
BODY

msg201 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg201.send_msg
    msg201.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg202 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg202.send_msg
    msg202.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Now to which class does love belong--to the debatable or to
the undisputed class?
BODY

msg203 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg203.send_msg
    msg203.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 To the debatable, clearly; for if not, do you think that love
would have allowed you to say as you did, that he is an evil both to the
lover and the beloved, and also the greatest possible good?
BODY

msg204 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg204.send_msg
    msg204.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Capital. But will you tell me whether I defined love at the
beginning of my speech? for, having been in an ecstasy, I cannot well
remember.
BODY

msg205 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg205.send_msg
    msg205.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Yes, indeed; that you did, and no mistake.
BODY

msg206 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg206.send_msg
    msg206.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Then I perceive that the Nymphs of Achelous and Pan the son
of Hermes, who inspired me, were far better rhetoricians than Lysias
the son of Cephalus. Alas! how inferior to them he is! But perhaps I
am mistaken; and Lysias at the commencement of his lover's speech did
insist on our supposing love to be something or other which he fancied
him to be, and according to this model he fashioned and framed the
remainder of his discourse. Suppose we read his beginning over again:
BODY

msg207 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg207.send_msg
    msg207.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 If you please; but you will not find what you want.
BODY

msg208 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg208.send_msg
    msg208.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 Read, that I may have his exact words.
BODY

msg209 = Scon12.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg209.send_msg
    msg209.update({updated_at: 3.months.ago})




body_str = <<-BODY 
 'You know how matters stand with me, and how, as I conceive,
they might be arranged for our common interest; and I maintain I ought
not to fail in my suit because I am not your lover, for lovers repent of
the kindnesses which they have shown, when their love is over.'
BODY

msg210 = Pcon12.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.months.ago
    })

    msg210.send_msg
    msg210.update({updated_at: 3.months.ago})




      
        Scon12.update({
                             message_timestamp: 3.months.ago,
                             read: true
                           }) 
        Pcon12.update({
                             message_timestamp: 3.months.ago,
                             read: true
                           }) 


      MetCon13 = MetaConversation.create();

      Scon13 = soc.conversations.create(title: "Here he appears to have done", meta_conversation: MetCon13)
      Pcon13 =  phaedrus.conversations.create(title: "Here he appears to have done", meta_conversation: MetCon13)
body_str = <<-BODY 
 Here he appears to have done just the reverse of what he
ought; for he has begun at the end, and is swimming on his back through
the flood to the place of starting. His address to the fair youth begins
where the lover would have ended. Am I not right, sweet Phaedrus?
BODY

msg211 = Scon13.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg211.send_msg
    msg211.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 Yes, indeed, Socrates; he does begin at the end.
BODY

msg212 = Pcon13.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg212.send_msg
    msg212.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 Then as to the other topics--are they not thrown down anyhow?
Is there any principle in them? Why should the next topic follow next in
order, or any other topic? I cannot help fancying in my ignorance that
he wrote off boldly just what came into his head, but I dare say that
you would recognize a rhetorical necessity in the succession of the
several parts of the composition?
BODY

msg213 = Scon13.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg213.send_msg
    msg213.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 You have too good an opinion of me if you think that I have
any such insight into his principles of composition.
BODY

msg214 = Pcon13.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg214.send_msg
    msg214.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 At any rate, you will allow that every discourse ought to be
a living creature, having a body of its own and a head and feet; there
should be a middle, beginning, and end, adapted to one another and to
the whole?
BODY

msg215 = Scon13.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg215.send_msg
    msg215.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg216 = Pcon13.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg216.send_msg
    msg216.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 Can this be said of the discourse of Lysias? See whether you
can find any more connexion in his words than in the epitaph which is
said by some to have been inscribed on the grave of Midas the Phrygian.
BODY

msg217 = Scon13.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg217.send_msg
    msg217.update({updated_at: 2.months.ago})




      
        Scon13.update({
                             message_timestamp: 2.months.ago,
                             read: true
                           }) 
        Pcon13.update({
                             message_timestamp: 2.months.ago,
                             read: true
                           }) 


      MetCon14 = MetaConversation.create();

      Scon14 = soc.conversations.create(title: "What is there remarkable in the", meta_conversation: MetCon14)
      Pcon14 =  phaedrus.conversations.create(title: "What is there remarkable in the", meta_conversation: MetCon14)
body_str = <<-BODY 
 What is there remarkable in the epitaph?
BODY

msg218 = Pcon14.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg218.send_msg
    msg218.update({updated_at: 2.months.ago})




      
        Scon14.update({
                             message_timestamp: 2.months.ago,
                             read: true
                           }) 
        Pcon14.update({
                             message_timestamp: 2.months.ago,
                             read: true
                           }) 


      MetCon15 = MetaConversation.create();

      Scon15 = soc.conversations.create(title: "It is as follows:--", meta_conversation: MetCon15)
      Pcon15 =  phaedrus.conversations.create(title: "It is as follows:--", meta_conversation: MetCon15)
body_str = <<-BODY 
 It is as follows:--
BODY

msg219 = Scon15.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg219.send_msg
    msg219.update({updated_at: 2.months.ago})








body_str = <<-BODY 
 You are making fun of that oration of ours.
BODY

msg220 = Pcon15.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg220.send_msg
    msg220.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 Well, I will say no more about your friend's speech lest I
should give offence to you; although I think that it might furnish many
other examples of what a man ought rather to avoid. But I will proceed
to the other speech, which, as I think, is also suggestive to students
of rhetoric.
BODY

msg221 = Scon15.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg221.send_msg
    msg221.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 In what way?
BODY

msg222 = Pcon15.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg222.send_msg
    msg222.update({updated_at: 2.months.ago})




      
        Scon15.update({
                             message_timestamp: 2.months.ago,
                             read: true
                           }) 
        Pcon15.update({
                             message_timestamp: 2.months.ago,
                             read: true
                           }) 


      MetCon16 = MetaConversation.create();

      Scon16 = soc.conversations.create(title: "The two speeches, as you may", meta_conversation: MetCon16)
      Pcon16 =  phaedrus.conversations.create(title: "The two speeches, as you may", meta_conversation: MetCon16)
body_str = <<-BODY 
 The two speeches, as you may remember, were unlike; the one
argued that the lover and the other that the non-lover ought to be
accepted.
BODY

msg223 = Scon16.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.months.ago
    })

    msg223.send_msg
    msg223.update({updated_at: 2.months.ago})




body_str = <<-BODY 
 And right manfully.
BODY

msg224 = Pcon16.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg224.send_msg
    msg224.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 You should rather say 'madly;' and madness was the argument of
them, for, as I said, 'love is a madness.'
BODY

msg225 = Scon16.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg225.send_msg
    msg225.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 Yes.
BODY

msg226 = Pcon16.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg226.send_msg
    msg226.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 And of madness there were two kinds; one produced by human
infirmity, the other was a divine release of the soul from the yoke of
custom and convention.
BODY

msg227 = Scon16.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg227.send_msg
    msg227.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 True.
BODY

msg228 = Pcon16.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg228.send_msg
    msg228.update({updated_at: 1.months.ago})




      
        Scon16.update({
                             message_timestamp: 1.months.ago,
                             read: true
                           }) 
        Pcon16.update({
                             message_timestamp: 1.months.ago,
                             read: true
                           }) 


      MetCon17 = MetaConversation.create();

      Scon17 = soc.conversations.create(title: "The divine madness was subdivided into", meta_conversation: MetCon17)
      Pcon17 =  phaedrus.conversations.create(title: "The divine madness was subdivided into", meta_conversation: MetCon17)
body_str = <<-BODY 
 The divine madness was subdivided into four kinds, prophetic,
initiatory, poetic, erotic, having four gods presiding over them; the
first was the inspiration of Apollo, the second that of Dionysus, the
third that of the Muses, the fourth that of Aphrodite and Eros. In the
description of the last kind of madness, which was also said to be
the best, we spoke of the affection of love in a figure, into which we
introduced a tolerably credible and possibly true though partly erring
myth, which was also a hymn in honour of Love, who is your lord and also
mine, Phaedrus, and the guardian of fair children, and to him we sung
the hymn in measured and solemn strain.
BODY

msg229 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg229.send_msg
    msg229.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 I know that I had great pleasure in listening to you.
BODY

msg230 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg230.send_msg
    msg230.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 Let us take this instance and note how the transition was made
from blame to praise.
BODY

msg231 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg231.send_msg
    msg231.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 What do you mean?
BODY

msg232 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg232.send_msg
    msg232.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 I mean to say that the composition was mostly playful. Yet in
these chance fancies of the hour were involved two principles of which
we should be too glad to have a clearer description if art could give us
one.
BODY

msg233 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg233.send_msg
    msg233.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 What are they?
BODY

msg234 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg234.send_msg
    msg234.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 First, the comprehension of scattered particulars in one idea;
as in our definition of love, which whether true or false certainly gave
clearness and consistency to the discourse, the speaker should define
his several notions and so make his meaning clear.
BODY

msg235 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg235.send_msg
    msg235.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 What is the other principle, Socrates?
BODY

msg236 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg236.send_msg
    msg236.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 The second principle is that of division into species
according to the natural formation, where the joint is, not breaking any
part as a bad carver might. Just as our two discourses, alike assumed,
first of all, a single form of unreason; and then, as the body which
from being one becomes double and may be divided into a left side and
right side, each having parts right and left of the same name--after
this manner the speaker proceeded to divide the parts of the left side
and did not desist until he found in them an evil or left-handed love
which he justly reviled; and the other discourse leading us to the
madness which lay on the right side, found another love, also having the
same name, but divine, which the speaker held up before us and applauded
and affirmed to be the author of the greatest benefits.
BODY

msg237 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.months.ago
    })

    msg237.send_msg
    msg237.update({updated_at: 1.months.ago})




body_str = <<-BODY 
 Most true.
BODY

msg238 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 12.days.ago
    })

    msg238.send_msg
    msg238.update({updated_at: 12.days.ago})




body_str = <<-BODY 
 I am myself a great lover of these processes of division and
generalization; they help me to speak and to think. And if I find any
man who is able to see 'a One and Many' in nature, him I follow, and
'walk in his footsteps as if he were a god.' And those who have this
art, I have hitherto been in the habit of calling dialecticians; but God
knows whether the name is right or not. And I should like to know what
name you would give to your or to Lysias' disciples, and whether this
may not be that famous art of rhetoric which Thrasymachus and others
teach and practise? Skilful speakers they are, and impart their skill to
any who is willing to make kings of them and to bring gifts to them.
BODY

msg239 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg239.send_msg
    msg239.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 Yes, they are royal men; but their art is not the same
with the art of those whom you call, and rightly, in my opinion,
dialecticians:--Still we are in the dark about rhetoric.
BODY

msg240 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg240.send_msg
    msg240.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 What do you mean? The remains of it, if there be anything
remaining which can be brought under rules of art, must be a fine thing;
and, at any rate, is not to be despised by you and me. But how much is
left?
BODY

msg241 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg241.send_msg
    msg241.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 There is a great deal surely to be found in books of rhetoric?
BODY

msg242 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg242.send_msg
    msg242.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 Yes; thank you for reminding me:--There is the exordium,
showing how the speech should begin, if I remember rightly; that is what
you mean--the niceties of the art?
BODY

msg243 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg243.send_msg
    msg243.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg244 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg244.send_msg
    msg244.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 Then follows the statement of facts, and upon that witnesses;
thirdly, proofs; fourthly, probabilities are to come; the great
Byzantian word-maker also speaks, if I am not mistaken, of confirmation
and further confirmation.
BODY

msg245 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg245.send_msg
    msg245.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 You mean the excellent Theodorus.
BODY

msg246 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.days.ago
    })

    msg246.send_msg
    msg246.update({updated_at: 11.days.ago})




body_str = <<-BODY 
 Yes; and he tells how refutation or further refutation is to
be managed, whether in accusation or defence. I ought also to mention
the illustrious Parian, Evenus, who first invented insinuations and
indirect praises; and also indirect censures, which according to some
he put into verse to help the memory. But shall I 'to dumb forgetfulness
consign' Tisias and Gorgias, who are not ignorant that probability is
superior to truth, and who by force of argument make the little appear
great and the great little, disguise the new in old fashions and the old
in new fashions, and have discovered forms for everything, either short
or going on to infinity. I remember Prodicus laughing when I told him of
this; he said that he had himself discovered the true rule of art, which
was to be neither long nor short, but of a convenient length.
BODY

msg247 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg247.send_msg
    msg247.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 Well done, Prodicus!
BODY

msg248 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg248.send_msg
    msg248.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 Then there is Hippias the Elean stranger, who probably agrees
with him.
BODY

msg249 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg249.send_msg
    msg249.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg250 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg250.send_msg
    msg250.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 And there is also Polus, who has treasuries of diplasiology,
and gnomology, and eikonology, and who teaches in them the names of
which Licymnius made him a present; they were to give a polish.
BODY

msg251 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg251.send_msg
    msg251.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 Had not Protagoras something of the same sort?
BODY

msg252 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg252.send_msg
    msg252.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 Yes, rules of correct diction and many other fine precepts;
for the 'sorrows of a poor old man,' or any other pathetic case, no one
is better than the Chalcedonian giant; he can put a whole company of
people into a passion and out of one again by his mighty magic, and
is first-rate at inventing or disposing of any sort of calumny on any
grounds or none. All of them agree in asserting that a speech should end
in a recapitulation, though they do not all agree to use the same word.
BODY

msg253 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg253.send_msg
    msg253.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 You mean that there should be a summing up of the arguments in
order to remind the hearers of them.
BODY

msg254 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg254.send_msg
    msg254.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 I have now said all that I have to say of the art of rhetoric:
have you anything to add?
BODY

msg255 = Scon17.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg255.send_msg
    msg255.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 Not much; nothing very important.
BODY

msg256 = Pcon17.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg256.send_msg
    msg256.update({updated_at: 10.days.ago})




      
        Scon17.update({
                             message_timestamp: 10.days.ago,
                             read: true
                           }) 
        Pcon17.update({
                             message_timestamp: 10.days.ago,
                             read: true
                           }) 


      MetCon18 = MetaConversation.create();

      Scon18 = soc.conversations.create(title: "Leave the unimportant and let us", meta_conversation: MetCon18)
      Pcon18 =  phaedrus.conversations.create(title: "Leave the unimportant and let us", meta_conversation: MetCon18)
body_str = <<-BODY 
 Leave the unimportant and let us bring the really important
question into the light of day, which is: What power has this art of
rhetoric, and when?
BODY

msg257 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.days.ago
    })

    msg257.send_msg
    msg257.update({updated_at: 10.days.ago})




body_str = <<-BODY 
 A very great power in public meetings.
BODY

msg258 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg258.send_msg
    msg258.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 It has. But I should like to know whether you have the same
feeling as I have about the rhetoricians? To me there seem to be a great
many holes in their web.
BODY

msg259 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg259.send_msg
    msg259.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 Give an example.
BODY

msg260 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg260.send_msg
    msg260.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 I will. Suppose a person to come to your friend Eryximachus,
or to his father Acumenus, and to say to him: 'I know how to apply drugs
which shall have either a heating or a cooling effect, and I can give
a vomit and also a purge, and all that sort of thing; and knowing all
this, as I do, I claim to be a physician and to make physicians by
imparting this knowledge to others,'--what do you suppose that they
would say?
BODY

msg261 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg261.send_msg
    msg261.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 They would be sure to ask him whether he knew 'to whom' he
would give his medicines, and 'when,' and 'how much.'
BODY

msg262 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg262.send_msg
    msg262.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 And suppose that he were to reply: 'No; I know nothing of all
that; I expect the patient who consults me to be able to do these things
for himself'?
BODY

msg263 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg263.send_msg
    msg263.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 They would say in reply that he is a madman or a pedant who
fancies that he is a physician because he has read something in a
book, or has stumbled on a prescription or two, although he has no real
understanding of the art of medicine.
BODY

msg264 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg264.send_msg
    msg264.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 And suppose a person were to come to Sophocles or Euripides
and say that he knows how to make a very long speech about a small
matter, and a short speech about a great matter, and also a sorrowful
speech, or a terrible, or threatening speech, or any other kind of
speech, and in teaching this fancies that he is teaching the art of
tragedy--?
BODY

msg265 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg265.send_msg
    msg265.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 They too would surely laugh at him if he fancies that tragedy
is anything but the arranging of these elements in a manner which will
be suitable to one another and to the whole.
BODY

msg266 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg266.send_msg
    msg266.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 But I do not suppose that they would be rude or abusive to
him: Would they not treat him as a musician a man who thinks that he is
a harmonist because he knows how to pitch the highest and lowest note;
happening to meet such an one he would not say to him savagely, 'Fool,
you are mad!' But like a musician, in a gentle and harmonious tone of
voice, he would answer: 'My good friend, he who would be a harmonist
must certainly know this, and yet he may understand nothing of harmony
if he has not got beyond your stage of knowledge, for you only know the
preliminaries of harmony and not harmony itself.'
BODY

msg267 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg267.send_msg
    msg267.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 Very true.
BODY

msg268 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg268.send_msg
    msg268.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 And will not Sophocles say to the display of the would-be
tragedian, that this is not tragedy but the preliminaries of tragedy?
and will not Acumenus say the same of medicine to the would-be
physician?
BODY

msg269 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg269.send_msg
    msg269.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 Quite true.
BODY

msg270 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg270.send_msg
    msg270.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 And if Adrastus the mellifluous or Pericles heard of these
wonderful arts, brachylogies and eikonologies and all the hard names
which we have been endeavouring to draw into the light of day, what
would they say? Instead of losing temper and applying uncomplimentary
epithets, as you and I have been doing, to the authors of such an
imaginary art, their superior wisdom would rather censure us, as well
as them. 'Have a little patience, Phaedrus and Socrates, they would say;
you should not be in such a passion with those who from some want of
dialectical skill are unable to define the nature of rhetoric, and
consequently suppose that they have found the art in the preliminary
conditions of it, and when these have been taught by them to others,
fancy that the whole art of rhetoric has been taught by them; but as
to using the several instruments of the art effectively, or making the
composition a whole,--an application of it such as this is they regard
as an easy thing which their disciples may make for themselves.'
BODY

msg271 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg271.send_msg
    msg271.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I quite admit, Socrates, that the art of rhetoric which these
men teach and of which they write is such as you describe--there I
agree with you. But I still want to know where and how the true art of
rhetoric and persuasion is to be acquired.
BODY

msg272 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg272.send_msg
    msg272.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 The perfection which is required of the finished orator is,
or rather must be, like the perfection of anything else; partly given by
nature, but may also be assisted by art. If you have the natural power
and add to it knowledge and practice, you will be a distinguished
speaker; if you fall short in either of these, you will be to that
extent defective. But the art, as far as there is an art, of rhetoric
does not lie in the direction of Lysias or Thrasymachus.
BODY

msg273 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg273.send_msg
    msg273.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 In what direction then?
BODY

msg274 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg274.send_msg
    msg274.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I conceive Pericles to have been the most accomplished of
rhetoricians.
BODY

msg275 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg275.send_msg
    msg275.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 What of that?
BODY

msg276 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg276.send_msg
    msg276.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 All the great arts require discussion and high speculation
about the truths of nature; hence come loftiness of thought and
completeness of execution. And this, as I conceive, was the quality
which, in addition to his natural gifts, Pericles acquired from his
intercourse with Anaxagoras whom he happened to know. He was thus imbued
with the higher philosophy, and attained the knowledge of Mind and the
negative of Mind, which were favourite themes of Anaxagoras, and applied
what suited his purpose to the art of speaking.
BODY

msg277 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg277.send_msg
    msg277.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 Explain.
BODY

msg278 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg278.send_msg
    msg278.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 Rhetoric is like medicine.
BODY

msg279 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg279.send_msg
    msg279.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 How so?
BODY

msg280 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg280.send_msg
    msg280.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 Why, because medicine has to define the nature of the body
and rhetoric of the soul--if we would proceed, not empirically but
scientifically, in the one case to impart health and strength by giving
medicine and food, in the other to implant the conviction or virtue
which you desire, by the right application of words and training.
BODY

msg281 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg281.send_msg
    msg281.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 There, Socrates, I suspect that you are right.
BODY

msg282 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg282.send_msg
    msg282.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 And do you think that you can know the nature of the soul
intelligently without knowing the nature of the whole?
BODY

msg283 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg283.send_msg
    msg283.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Hippocrates the Asclepiad says that the nature even of the
body can only be understood as a whole. (Compare Charmides.)
BODY

msg284 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg284.send_msg
    msg284.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Yes, friend, and he was right:--still, we ought not to be
content with the name of Hippocrates, but to examine and see whether his
argument agrees with his conception of nature.
BODY

msg285 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg285.send_msg
    msg285.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 I agree.
BODY

msg286 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg286.send_msg
    msg286.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Then consider what truth as well as Hippocrates says about
this or about any other nature. Ought we not to consider first whether
that which we wish to learn and to teach is a simple or multiform thing,
and if simple, then to enquire what power it has of acting or being
acted upon in relation to other things, and if multiform, then to number
the forms; and see first in the case of one of them, and then in the
case of all of them, what is that power of acting or being acted upon
which makes each and all of them to be what they are?
BODY

msg287 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg287.send_msg
    msg287.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 You may very likely be right, Socrates.
BODY

msg288 = Pcon18.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg288.send_msg
    msg288.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 The method which proceeds without analysis is like the groping
of a blind man. Yet, surely, he who is an artist ought not to admit of
a comparison with the blind, or deaf. The rhetorician, who teaches his
pupil to speak scientifically, will particularly set forth the nature of
that being to which he addresses his speeches; and this, I conceive, to
be the soul.
BODY

msg289 = Scon18.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg289.send_msg
    msg289.update({updated_at: 7.days.ago})




      
        Scon18.update({
                             message_timestamp: 7.days.ago,
                             read: true
                           }) 
        Pcon18.update({
                             message_timestamp: 7.days.ago,
                             read: true
                           }) 


      MetCon19 = MetaConversation.create();

      Scon19 = soc.conversations.create(title: "Certainly.", meta_conversation: MetCon19)
      Pcon19 =  phaedrus.conversations.create(title: "Certainly.", meta_conversation: MetCon19)
body_str = <<-BODY 
 Certainly.
BODY

msg290 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg290.send_msg
    msg290.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 His whole effort is directed to the soul; for in that he seeks
to produce conviction.
BODY

msg291 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg291.send_msg
    msg291.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg292 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg292.send_msg
    msg292.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Then clearly, Thrasymachus or any one else who teaches
rhetoric in earnest will give an exact description of the nature of the
soul; which will enable us to see whether she be single and same, or,
like the body, multiform. That is what we should call showing the nature
of the soul.
BODY

msg293 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg293.send_msg
    msg293.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Exactly.
BODY

msg294 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg294.send_msg
    msg294.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 He will explain, secondly, the mode in which she acts or is
acted upon.
BODY

msg295 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg295.send_msg
    msg295.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 True.
BODY

msg296 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg296.send_msg
    msg296.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Thirdly, having classified men and speeches, and their kinds
and affections, and adapted them to one another, he will tell the
reasons of his arrangement, and show why one soul is persuaded by a
particular form of argument, and another not.
BODY

msg297 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg297.send_msg
    msg297.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 You have hit upon a very good way.
BODY

msg298 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg298.send_msg
    msg298.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Yes, that is the true and only way in which any subject can
be set forth or treated by rules of art, whether in speaking or writing.
But the writers of the present day, at whose feet you have sat, craftily
conceal the nature of the soul which they know quite well. Nor, until
they adopt our method of reading and writing, can we admit that they
write by rules of art?
BODY

msg299 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg299.send_msg
    msg299.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 What is our method?
BODY

msg300 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg300.send_msg
    msg300.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 I cannot give you the exact details; but I should like to
tell you generally, as far as is in my power, how a man ought to proceed
according to rules of art.
BODY

msg301 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg301.send_msg
    msg301.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Let me hear.
BODY

msg302 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg302.send_msg
    msg302.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Oratory is the art of enchanting the soul, and therefore he
who would be an orator has to learn the differences of human souls--they
are so many and of such a nature, and from them come the differences
between man and man. Having proceeded thus far in his analysis, he
will next divide speeches into their different classes:--'Such and such
persons,' he will say, are affected by this or that kind of speech in
this or that way,' and he will tell you why. The pupil must have a good
theoretical notion of them first, and then he must have experience of
them in actual life, and be able to follow them with all his senses
about him, or he will never get beyond the precepts of his masters. But
when he understands what persons are persuaded by what arguments, and
sees the person about whom he was speaking in the abstract actually
before him, and knows that it is he, and can say to himself, 'This is
the man or this is the character who ought to have a certain argument
applied to him in order to convince him of a certain opinion;'--he who
knows all this, and knows also when he should speak and when he should
refrain, and when he should use pithy sayings, pathetic appeals,
sensational effects, and all the other modes of speech which he has
learned;--when, I say, he knows the times and seasons of all these
things, then, and not till then, he is a perfect master of his art; but
if he fail in any of these points, whether in speaking or teaching or
writing them, and yet declares that he speaks by rules of art, he who
says 'I don't believe you' has the better of him. Well, the teacher will
say, is this, Phaedrus and Socrates, your account of the so-called art
of rhetoric, or am I to look for another?
BODY

msg303 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg303.send_msg
    msg303.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 He must take this, Socrates, for there is no possibility of
another, and yet the creation of such an art is not easy.
BODY

msg304 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg304.send_msg
    msg304.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Very true; and therefore let us consider this matter in every
light, and see whether we cannot find a shorter and easier road; there
is no use in taking a long rough roundabout way if there be a shorter
and easier one. And I wish that you would try and remember whether
you have heard from Lysias or any one else anything which might be of
service to us.
BODY

msg305 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg305.send_msg
    msg305.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 If trying would avail, then I might; but at the moment I can
think of nothing.
BODY

msg306 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg306.send_msg
    msg306.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Suppose I tell you something which somebody who knows told me.
BODY

msg307 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg307.send_msg
    msg307.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg308 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg308.send_msg
    msg308.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 May not 'the wolf,' as the proverb says, 'claim a hearing'?
BODY

msg309 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg309.send_msg
    msg309.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Do you say what can be said for him.
BODY

msg310 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg310.send_msg
    msg310.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 He will argue that there is no use in putting a solemn face
on these matters, or in going round and round, until you arrive at first
principles; for, as I said at first, when the question is of justice and
good, or is a question in which men are concerned who are just and good,
either by nature or habit, he who would be a skilful rhetorician has
no need of truth--for that in courts of law men literally care
nothing about truth, but only about conviction: and this is based on
probability, to which he who would be a skilful orator should therefore
give his whole attention. And they say also that there are cases in
which the actual facts, if they are improbable, ought to be withheld,
and only the probabilities should be told either in accusation or
defence, and that always in speaking, the orator should keep probability
in view, and say good-bye to the truth. And the observance of this
principle throughout a speech furnishes the whole art.
BODY

msg311 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg311.send_msg
    msg311.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 That is what the professors of rhetoric do actually say,
Socrates. I have not forgotten that we have quite briefly touched upon
this matter already; with them the point is all-important.
BODY

msg312 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg312.send_msg
    msg312.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 I dare say that you are familiar with Tisias. Does he not
define probability to be that which the many think?
BODY

msg313 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg313.send_msg
    msg313.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Certainly, he does.
BODY

msg314 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg314.send_msg
    msg314.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 I believe that he has a clever and ingenious case of this
sort:--He supposes a feeble and valiant man to have assaulted a strong
and cowardly one, and to have robbed him of his coat or of something or
other; he is brought into court, and then Tisias says that both parties
should tell lies: the coward should say that he was assaulted by more
men than one; the other should prove that they were alone, and should
argue thus: 'How could a weak man like me have assaulted a strong man
like him?' The complainant will not like to confess his own cowardice,
and will therefore invent some other lie which his adversary will thus
gain an opportunity of refuting. And there are other devices of the same
kind which have a place in the system. Am I not right, Phaedrus?
BODY

msg315 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg315.send_msg
    msg315.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg316 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg316.send_msg
    msg316.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Bless me, what a wonderfully mysterious art is this which
Tisias or some other gentleman, in whatever name or country he rejoices,
has discovered. Shall we say a word to him or not?
BODY

msg317 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg317.send_msg
    msg317.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 What shall we say to him?
BODY

msg318 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg318.send_msg
    msg318.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Let us tell him that, before he appeared, you and I were
saying that the probability of which he speaks was engendered in the
minds of the many by the likeness of the truth, and we had just been
affirming that he who knew the truth would always know best how to
discover the resemblances of the truth. If he has anything else to say
about the art of speaking we should like to hear him; but if not, we
are satisfied with our own view, that unless a man estimates the various
characters of his hearers and is able to divide all things into classes
and to comprehend them under single ideas, he will never be a skilful
rhetorician even within the limits of human power. And this skill he
will not attain without a great deal of trouble, which a good man ought
to undergo, not for the sake of speaking and acting before men, but in
order that he may be able to say what is acceptable to God and always
to act acceptably to Him as far as in him lies; for there is a saying of
wiser men than ourselves, that a man of sense should not try to please
his fellow-servants (at least this should not be his first object)
but his good and noble masters; and therefore if the way is long and
circuitous, marvel not at this, for, where the end is great, there we
may take the longer road, but not for lesser ends such as yours. Truly,
the argument may say, Tisias, that if you do not mind going so far,
rhetoric has a fair beginning here.
BODY

msg319 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg319.send_msg
    msg319.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 I think, Socrates, that this is admirable, if only
practicable.
BODY

msg320 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg320.send_msg
    msg320.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 But even to fail in an honourable object is honourable.
BODY

msg321 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg321.send_msg
    msg321.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 True.
BODY

msg322 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg322.send_msg
    msg322.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Enough appears to have been said by us of a true and false art
of speaking.
BODY

msg323 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg323.send_msg
    msg323.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg324 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg324.send_msg
    msg324.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 But there is something yet to be said of propriety and
impropriety of writing.
BODY

msg325 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg325.send_msg
    msg325.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg326 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg326.send_msg
    msg326.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Do you know how you can speak or act about rhetoric in a
manner which will be acceptable to God?
BODY

msg327 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg327.send_msg
    msg327.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 No, indeed. Do you?
BODY

msg328 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg328.send_msg
    msg328.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 I have heard a tradition of the ancients, whether true or not
they only know; although if we had found the truth ourselves, do you
think that we should care much about the opinions of men?
BODY

msg329 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg329.send_msg
    msg329.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Your question needs no answer; but I wish that you would tell
me what you say that you have heard.
BODY

msg330 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg330.send_msg
    msg330.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 At the Egyptian city of Naucratis, there was a famous old god,
whose name was Theuth; the bird which is called the Ibis is sacred
to him, and he was the inventor of many arts, such as arithmetic and
calculation and geometry and astronomy and draughts and dice, but his
great discovery was the use of letters. Now in those days the god Thamus
was the king of the whole country of Egypt; and he dwelt in that great
city of Upper Egypt which the Hellenes call Egyptian Thebes, and the
god himself is called by them Ammon. To him came Theuth and showed his
inventions, desiring that the other Egyptians might be allowed to have
the benefit of them; he enumerated them, and Thamus enquired about
their several uses, and praised some of them and censured others, as he
approved or disapproved of them. It would take a long time to repeat all
that Thamus said to Theuth in praise or blame of the various arts. But
when they came to letters, This, said Theuth, will make the Egyptians
wiser and give them better memories; it is a specific both for the
memory and for the wit. Thamus replied: O most ingenious Theuth, the
parent or inventor of an art is not always the best judge of the utility
or inutility of his own inventions to the users of them. And in this
instance, you who are the father of letters, from a paternal love of
your own children have been led to attribute to them a quality which
they cannot have; for this discovery of yours will create forgetfulness
in the learners' souls, because they will not use their memories;
they will trust to the external written characters and not remember
of themselves. The specific which you have discovered is an aid not to
memory, but to reminiscence, and you give your disciples not truth, but
only the semblance of truth; they will be hearers of many things and
will have learned nothing; they will appear to be omniscient and will
generally know nothing; they will be tiresome company, having the show
of wisdom without the reality.
BODY

msg331 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg331.send_msg
    msg331.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Yes, Socrates, you can easily invent tales of Egypt, or of any
other country.
BODY

msg332 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg332.send_msg
    msg332.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 There was a tradition in the temple of Dodona that oaks first
gave prophetic utterances. The men of old, unlike in their simplicity to
young philosophy, deemed that if they heard the truth even from 'oak or
rock,' it was enough for them; whereas you seem to consider not whether
a thing is or is not true, but who the speaker is and from what country
the tale comes.
BODY

msg333 = Scon19.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg333.send_msg
    msg333.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 I acknowledge the justice of your rebuke; and I think that the
Theban is right in his view about letters.
BODY

msg334 = Pcon19.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg334.send_msg
    msg334.update({updated_at: 3.days.ago})




      
        Scon19.update({
                             message_timestamp: 3.days.ago,
                             read: true
                           }) 
        Pcon19.update({
                             message_timestamp: 3.days.ago,
                             read: true
                           }) 


      MetCon20 = MetaConversation.create();

      Scon20 = soc.conversations.create(title: "He would be a very simple", meta_conversation: MetCon20)
      Pcon20 =  phaedrus.conversations.create(title: "He would be a very simple", meta_conversation: MetCon20)
body_str = <<-BODY 
 He would be a very simple person, and quite a stranger to the
oracles of Thamus or Ammon, who should leave in writing or receive
in writing any art under the idea that the written word would be
intelligible or certain; or who deemed that writing was at all better
than knowledge and recollection of the same matters?
BODY

msg335 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg335.send_msg
    msg335.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 That is most true.
BODY

msg336 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg336.send_msg
    msg336.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 I cannot help feeling, Phaedrus, that writing is unfortunately
like painting; for the creations of the painter have the attitude of
life, and yet if you ask them a question they preserve a solemn silence.
And the same may be said of speeches. You would imagine that they had
intelligence, but if you want to know anything and put a question to one
of them, the speaker always gives one unvarying answer. And when they
have been once written down they are tumbled about anywhere among those
who may or may not understand them, and know not to whom they should
reply, to whom not: and, if they are maltreated or abused, they have no
parent to protect them; and they cannot protect or defend themselves.
BODY

msg337 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg337.send_msg
    msg337.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 That again is most true.
BODY

msg338 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg338.send_msg
    msg338.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Is there not another kind of word or speech far better than
this, and having far greater power--a son of the same family, but
lawfully begotten?
BODY

msg339 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg339.send_msg
    msg339.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Whom do you mean, and what is his origin?
BODY

msg340 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg340.send_msg
    msg340.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 I mean an intelligent word graven in the soul of the learner,
which can defend itself, and knows when to speak and when to be silent.
BODY

msg341 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg341.send_msg
    msg341.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 You mean the living word of knowledge which has a soul, and of
which the written word is properly no more than an image?
BODY

msg342 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg342.send_msg
    msg342.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Yes, of course that is what I mean. And now may I be allowed
to ask you a question: Would a husbandman, who is a man of sense, take
the seeds, which he values and which he wishes to bear fruit, and in
sober seriousness plant them during the heat of summer, in some garden
of Adonis, that he may rejoice when he sees them in eight days appearing
in beauty? at least he would do so, if at all, only for the sake of
amusement and pastime. But when he is in earnest he sows in fitting
soil, and practises husbandry, and is satisfied if in eight months the
seeds which he has sown arrive at perfection?
BODY

msg343 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg343.send_msg
    msg343.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Yes, Socrates, that will be his way when he is in earnest; he
will do the other, as you say, only in play.
BODY

msg344 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg344.send_msg
    msg344.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 And can we suppose that he who knows the just and good and
honourable has less understanding, than the husbandman, about his own
seeds?
BODY

msg345 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg345.send_msg
    msg345.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Certainly not.
BODY

msg346 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg346.send_msg
    msg346.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Then he will not seriously incline to 'write' his thoughts
'in water' with pen and ink, sowing words which can neither speak for
themselves nor teach the truth adequately to others?
BODY

msg347 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg347.send_msg
    msg347.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 No, that is not likely.
BODY

msg348 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg348.send_msg
    msg348.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 No, that is not likely--in the garden of letters he will sow
and plant, but only for the sake of recreation and amusement; he will
write them down as memorials to be treasured against the forgetfulness
of old age, by himself, or by any other old man who is treading the same
path. He will rejoice in beholding their tender growth; and while others
are refreshing their souls with banqueting and the like, this will be
the pastime in which his days are spent.
BODY

msg349 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg349.send_msg
    msg349.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 A pastime, Socrates, as noble as the other is ignoble, the
pastime of a man who can be amused by serious talk, and can discourse
merrily about justice and the like.
BODY

msg350 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg350.send_msg
    msg350.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 True, Phaedrus. But nobler far is the serious pursuit of the
dialectician, who, finding a congenial soul, by the help of science sows
and plants therein words which are able to help themselves and him who
planted them, and are not unfruitful, but have in them a seed which
others brought up in different soils render immortal, making the
possessors of it happy to the utmost extent of human happiness.
BODY

msg351 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg351.send_msg
    msg351.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Far nobler, certainly.
BODY

msg352 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg352.send_msg
    msg352.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 And now, Phaedrus, having agreed upon the premises we may
decide about the conclusion.
BODY

msg353 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg353.send_msg
    msg353.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 About what conclusion?
BODY

msg354 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg354.send_msg
    msg354.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 About Lysias, whom we censured, and his art of writing, and
his discourses, and the rhetorical skill or want of skill which was
shown in them--these are the questions which we sought to determine, and
they brought us to this point. And I think that we are now pretty well
informed about the nature of art and its opposite.
BODY

msg355 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg355.send_msg
    msg355.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Yes, I think with you; but I wish that you would repeat what
was said.
BODY

msg356 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg356.send_msg
    msg356.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Until a man knows the truth of the several particulars of
which he is writing or speaking, and is able to define them as they are,
and having defined them again to divide them until they can be no longer
divided, and until in like manner he is able to discern the nature
of the soul, and discover the different modes of discourse which are
adapted to different natures, and to arrange and dispose them in such
a way that the simple form of speech may be addressed to the simpler
nature, and the complex and composite to the more complex nature--until
he has accomplished all this, he will be unable to handle arguments
according to rules of art, as far as their nature allows them to
be subjected to art, either for the purpose of teaching or
persuading;--such is the view which is implied in the whole preceding
argument.
BODY

msg357 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 12.hours.ago
    })

    msg357.send_msg
    msg357.update({updated_at: 12.hours.ago})




body_str = <<-BODY 
 Yes, that was our view, certainly.
BODY

msg358 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg358.send_msg
    msg358.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Secondly, as to the censure which was passed on the speaking
or writing of discourses, and how they might be rightly or wrongly
censured--did not our previous argument show--?
BODY

msg359 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg359.send_msg
    msg359.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Show what?
BODY

msg360 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg360.send_msg
    msg360.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 That whether Lysias or any other writer that ever was or will
be, whether private man or statesman, proposes laws and so becomes
the author of a political treatise, fancying that there is any great
certainty and clearness in his performance, the fact of his so writing
is only a disgrace to him, whatever men may say. For not to know the
nature of justice and injustice, and good and evil, and not to be able
to distinguish the dream from the reality, cannot in truth be otherwise
than disgraceful to him, even though he have the applause of the whole
world.
BODY

msg361 = Scon20.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg361.send_msg
    msg361.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg362 = Pcon20.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg362.send_msg
    msg362.update({updated_at: 11.hours.ago})




      
        Scon20.update({
                             message_timestamp: 11.hours.ago,
                             read: true
                           }) 
        Pcon20.update({
                             message_timestamp: 11.hours.ago,
                             read: true
                           }) 


      MetCon21 = MetaConversation.create();

      Scon21 = soc.conversations.create(title: "But he who thinks that in", meta_conversation: MetCon21)
      Pcon21 =  phaedrus.conversations.create(title: "But he who thinks that in", meta_conversation: MetCon21)
body_str = <<-BODY 
 But he who thinks that in the written word there is
necessarily much which is not serious, and that neither poetry
nor prose, spoken or written, is of any great value, if, like the
compositions of the rhapsodes, they are only recited in order to be
believed, and not with any view to criticism or instruction; and who
thinks that even the best of writings are but a reminiscence of what we
know, and that only in principles of justice and goodness and nobility
taught and communicated orally for the sake of instruction and graven
in the soul, which is the true way of writing, is there clearness and
perfection and seriousness, and that such principles are a man's own and
his legitimate offspring;--being, in the first place, the word which
he finds in his own bosom; secondly, the brethren and descendants and
relations of his idea which have been duly implanted by him in the souls
of others;--and who cares for them and no others--this is the right sort
of man; and you and I, Phaedrus, would pray that we may become like him.
BODY

msg363 = Scon21.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg363.send_msg
    msg363.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 That is most assuredly my desire and prayer.
BODY

msg364 = Pcon21.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg364.send_msg
    msg364.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 And now the play is played out; and of rhetoric enough. Go and
tell Lysias that to the fountain and school of the Nymphs we went
down, and were bidden by them to convey a message to him and to other
composers of speeches--to Homer and other writers of poems, whether set
to music or not; and to Solon and others who have composed writings in
the form of political discourses which they would term laws--to all of
them we are to say that if their compositions are based on knowledge of
the truth, and they can defend or prove them, when they are put to the
test, by spoken arguments, which leave their writings poor in
comparison of them, then they are to be called, not only poets, orators,
legislators, but are worthy of a higher name, befitting the serious
pursuit of their life.
BODY

msg365 = Scon21.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg365.send_msg
    msg365.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 What name would you assign to them?
BODY

msg366 = Pcon21.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg366.send_msg
    msg366.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Wise, I may not call them; for that is a great name which
belongs to God alone,--lovers of wisdom or philosophers is their modest
and befitting title.
BODY

msg367 = Scon21.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg367.send_msg
    msg367.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Very suitable.
BODY

msg368 = Pcon21.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg368.send_msg
    msg368.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 And he who cannot rise above his own compilations and
compositions, which he has been long patching and piecing, adding some
and taking away some, may be justly called poet or speech-maker or
law-maker.
BODY

msg369 = Scon21.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg369.send_msg
    msg369.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg370 = Pcon21.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg370.send_msg
    msg370.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Now go and tell this to your companion.
BODY

msg371 = Scon21.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg371.send_msg
    msg371.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 But there is also a friend of yours who ought not to be
forgotten.
BODY

msg372 = Pcon21.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg372.send_msg
    msg372.update({updated_at: 10.hours.ago})




      
        Scon21.update({
                             message_timestamp: 10.hours.ago,
                             read: true
                           }) 
        Pcon21.update({
                             message_timestamp: 10.hours.ago,
                             read: true
                           }) 


      MetCon22 = MetaConversation.create();

      Scon22 = soc.conversations.create(title: "Who is he?", meta_conversation: MetCon22)
      Pcon22 =  phaedrus.conversations.create(title: "Who is he?", meta_conversation: MetCon22)
body_str = <<-BODY 
 Who is he?
BODY

msg373 = Scon22.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg373.send_msg
    msg373.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Isocrates the fair:--What message will you send to him, and
how shall we describe him?
BODY

msg374 = Pcon22.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg374.send_msg
    msg374.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Isocrates is still young, Phaedrus; but I am willing to hazard
a prophecy concerning him.
BODY

msg375 = Scon22.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg375.send_msg
    msg375.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 What would you prophesy?
BODY

msg376 = Pcon22.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg376.send_msg
    msg376.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 I think that he has a genius which soars above the orations of
Lysias, and that his character is cast in a finer mould. My impression
of him is that he will marvellously improve as he grows older, and that
all former rhetoricians will be as children in comparison of him. And I
believe that he will not be satisfied with rhetoric, but that there is
in him a divine inspiration which will lead him to things higher still.
For he has an element of philosophy in his nature. This is the message
of the gods dwelling in this place, and which I will myself deliver to
Isocrates, who is my delight; and do you give the other to Lysias, who
is yours.
BODY

msg377 = Scon22.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg377.send_msg
    msg377.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 I will; and now as the heat is abated let us depart.
BODY

msg378 = Pcon22.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg378.send_msg
    msg378.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Should we not offer up a prayer first of all to the local
deities?
BODY

msg379 = Scon22.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg379.send_msg
    msg379.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 By all means.
BODY

msg380 = Pcon22.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg380.send_msg
    msg380.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Beloved Pan, and all ye other gods who haunt this place, give
me beauty in the inward soul; and may the outward and inward man be
at one. May I reckon the wise to be the wealthy, and may I have such
a quantity of gold as a temperate man and he only can bear and
carry.--Anything more? The prayer, I think, is enough for me.
BODY

msg381 = Scon22.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg381.send_msg
    msg381.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 Ask the same for me, for friends should have all things in
common.
BODY

msg382 = Pcon22.messages.create({
    source_address: "phaedrus#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg382.send_msg
    msg382.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 Let us go.

BODY

msg383 = Scon22.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "phaedrus#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg383.send_msg
    msg383.update({updated_at: 9.hours.ago})


