
euthyphro = User.create({fname: "Euthyphro", lname:"of Prospalta", username: "euthyphro", pass: "12345678"})
soc = User.find_by_username('daimonic')

MetCon3 = MetaConversation.create();

Scon3 = soc.conversations.create(title: 'A Question', meta_conversation: MetCon3)
Econ3 = euthyphro.conversations.create(title: 'A Question', meta_conversation: MetCon3)



body_str = <<-BODY 
 Why have you left the Lyceum, Socrates? and what are you
doing in the Porch of the King Archon? Surely you cannot be concerned in
a suit before the King, like myself?
BODY

msg1 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg1.send_msg
    msg1.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 Not in a suit, Euthyphro; impeachment is the word which the
Athenians use.
BODY

msg2 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg2.send_msg
    msg2.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 What! I suppose that some one has been prosecuting you, for I
cannot believe that you are the prosecutor of another.
BODY

msg3 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg3.send_msg
    msg3.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 Certainly not.
BODY

msg4 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg4.send_msg
    msg4.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 Then some one else has been prosecuting you?
BODY

msg5 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg5.send_msg
    msg5.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg6 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg6.send_msg
    msg6.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 And who is he?
BODY

msg7 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg7.send_msg
    msg7.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 A young man who is little known, Euthyphro; and I hardly know
him: his name is Meletus, and he is of the deme of Pitthis. Perhaps you
may remember his appearance; he has a beak, and long straight hair, and
a beard which is ill grown.
BODY

msg8 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg8.send_msg
    msg8.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 No, I do not remember him, Socrates. But what is the charge
which he brings against you?
BODY

msg9 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.days.ago
    })

    msg9.send_msg
    msg9.update({updated_at: 9.days.ago})




body_str = <<-BODY 
 What is the charge? Well, a very serious charge, which shows
a good deal of character in the young man, and for which he is certainly
not to be despised. He says he knows how the youth are corrupted and
who are their corruptors. I fancy that he must be a wise man, and seeing
that I am the reverse of a wise man, he has found me out, and is going
to accuse me of corrupting his young friends. And of this our mother the
state is to be the judge. Of all our political men he is the only one
who seems to me to begin in the right way, with the cultivation of
virtue in youth; like a good husbandman, he makes the young shoots his
first care, and clears away us who are the destroyers of them. This is
only the first step; he will afterwards attend to the elder branches;
and if he goes on as he has begun, he will be a very great public
benefactor.
BODY

msg10 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg10.send_msg
    msg10.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I hope that he may; but I rather fear, Socrates, that the
opposite will turn out to be the truth. My opinion is that in attacking
you he is simply aiming a blow at the foundation of the state. But in
what way does he say that you corrupt the young?
BODY

msg11 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg11.send_msg
    msg11.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 He brings a wonderful accusation against me, which at first
hearing excites surprise: he says that I am a poet or maker of gods, and
that I invent new gods and deny the existence of old ones; this is the
ground of his indictment.
BODY

msg12 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg12.send_msg
    msg12.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I understand, Socrates; he means to attack you about the
familiar sign which occasionally, as you say, comes to you. He thinks
that you are a neologian, and he is going to have you up before the
court for this. He knows that such a charge is readily received by the
world, as I myself know too well; for when I speak in the assembly about
divine things, and foretell the future to them, they laugh at me and
think me a madman. Yet every word that I say is true. But they are
jealous of us all; and we must be brave and go at them.
BODY

msg13 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg13.send_msg
    msg13.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 Their laughter, friend Euthyphro, is not a matter of much
consequence. For a man may be thought wise; but the Athenians, I
suspect, do not much trouble themselves about him until he begins to
impart his wisdom to others, and then for some reason or other, perhaps,
as you say, from jealousy, they are angry.
BODY

msg14 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg14.send_msg
    msg14.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I am never likely to try their temper in this way.
BODY

msg15 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg15.send_msg
    msg15.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I dare say not, for you are reserved in your behaviour, and
seldom impart your wisdom. But I have a benevolent habit of pouring out
myself to everybody, and would even pay for a listener, and I am afraid
that the Athenians may think me too talkative. Now if, as I was saying,
they would only laugh at me, as you say that they laugh at you, the
time might pass gaily enough in the court; but perhaps they may be in
earnest, and then what the end will be you soothsayers only can predict.
BODY

msg16 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg16.send_msg
    msg16.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I dare say that the affair will end in nothing, Socrates, and
that you will win your cause; and I think that I shall win my own.
BODY

msg17 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg17.send_msg
    msg17.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 And what is your suit, Euthyphro? are you the pursuer or the
defendant?
BODY

msg18 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.days.ago
    })

    msg18.send_msg
    msg18.update({updated_at: 8.days.ago})




body_str = <<-BODY 
 I am the pursuer.
BODY

msg19 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg19.send_msg
    msg19.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Of whom?
BODY

msg20 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg20.send_msg
    msg20.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 You will think me mad when I tell you.
BODY

msg21 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg21.send_msg
    msg21.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Why, has the fugitive wings?
BODY

msg22 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg22.send_msg
    msg22.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Nay, he is not very volatile at his time of life.
BODY

msg23 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg23.send_msg
    msg23.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Who is he?
BODY

msg24 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg24.send_msg
    msg24.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 My father.
BODY

msg25 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg25.send_msg
    msg25.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Your father! my good man?
BODY

msg26 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg26.send_msg
    msg26.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg27 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg27.send_msg
    msg27.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 And of what is he accused?
BODY

msg28 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg28.send_msg
    msg28.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 Of murder, Socrates.
BODY

msg29 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.days.ago
    })

    msg29.send_msg
    msg29.update({updated_at: 7.days.ago})




body_str = <<-BODY 
 By the powers, Euthyphro! how little does the common herd know
of the nature of right and truth. A man must be an extraordinary man,
and have made great strides in wisdom, before he could have seen his way
to bring such an action.
BODY

msg30 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg30.send_msg
    msg30.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Indeed, Socrates, he must.
BODY

msg31 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg31.send_msg
    msg31.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 I suppose that the man whom your father murdered was one of
your relatives--clearly he was; for if he had been a stranger you would
never have thought of prosecuting him.
BODY

msg32 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg32.send_msg
    msg32.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 I am amused, Socrates, at your making a distinction between
one who is a relation and one who is not a relation; for surely the
pollution is the same in either case, if you knowingly associate with
the murderer when you ought to clear yourself and him by proceeding
against him. The real question is whether the murdered man has been
justly slain. If justly, then your duty is to let the matter alone; but
if unjustly, then even if the murderer lives under the same roof with
you and eats at the same table, proceed against him. Now the man who is
dead was a poor dependant of mine who worked for us as a field labourer
on our farm in Naxos, and one day in a fit of drunken passion he got
into a quarrel with one of our domestic servants and slew him. My father
bound him hand and foot and threw him into a ditch, and then sent to
Athens to ask of a diviner what he should do with him. Meanwhile he
never attended to him and took no care about him, for he regarded him as
a murderer; and thought that no great harm would be done even if he did
die. Now this was just what happened. For such was the effect of cold
and hunger and chains upon him, that before the messenger returned from
the diviner, he was dead. And my father and family are angry with me for
taking the part of the murderer and prosecuting my father. They say
that he did not kill him, and that if he did, the dead man was but a
murderer, and I ought not to take any notice, for that a son is impious
who prosecutes a father. Which shows, Socrates, how little they know
what the gods think about piety and impiety.
BODY

msg33 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg33.send_msg
    msg33.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Good heavens, Euthyphro! and is your knowledge of religion
and of things pious and impious so very exact, that, supposing the
circumstances to be as you state them, you are not afraid lest you too
may be doing an impious thing in bringing an action against your father?
BODY

msg34 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg34.send_msg
    msg34.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 The best of Euthyphro, and that which distinguishes him,
Socrates, from other men, is his exact knowledge of all such matters.
What should I be good for without it?
BODY

msg35 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg35.send_msg
    msg35.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Rare friend! I think that I cannot do better than be your
disciple. Then before the trial with Meletus comes on I shall challenge
him, and say that I have always had a great interest in religious
questions, and now, as he charges me with rash imaginations and
innovations in religion, I have become your disciple. You, Meletus, as
I shall say to him, acknowledge Euthyphro to be a great theologian, and
sound in his opinions; and if you approve of him you ought to approve of
me, and not have me into court; but if you disapprove, you should begin
by indicting him who is my teacher, and who will be the ruin, not of the
young, but of the old; that is to say, of myself whom he instructs,
and of his old father whom he admonishes and chastises. And if Meletus
refuses to listen to me, but will go on, and will not shift the
indictment from me to you, I cannot do better than repeat this challenge
in the court.
BODY

msg36 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg36.send_msg
    msg36.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Yes, indeed, Socrates; and if he attempts to indict me I am
mistaken if I do not find a flaw in him; the court shall have a great
deal more to say to him than to me.
BODY

msg37 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg37.send_msg
    msg37.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 And I, my dear friend, knowing this, am desirous of becoming
your disciple. For I observe that no one appears to notice you--not even
this Meletus; but his sharp eyes have found me out at once, and he has
indicted me for impiety. And therefore, I adjure you to tell me the
nature of piety and impiety, which you said that you knew so well, and
of murder, and of other offences against the gods. What are they? Is
not piety in every action always the same? and impiety, again--is it not
always the opposite of piety, and also the same with itself, having, as
impiety, one notion which includes whatever is impious?
BODY

msg38 = Scon3.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg38.send_msg
    msg38.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 To be sure, Socrates.
BODY

msg39 = Econ3.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg39.send_msg
    msg39.update({updated_at: 6.days.ago})




      
        Scon3.update({
                             message_timestamp: 6.days.ago,
                             read: true
                           }) 
        Econ3.update({
                             message_timestamp: 6.days.ago,
                             read: true
                           }) 


      MetCon4 = MetaConversation.create();

      Scon4 = soc.conversations.create(title: "And what is piety, and what", meta_conversation: MetCon4)
      Econ4 = euthyphro.conversations.create(title: "And what is piety, and what", meta_conversation: MetCon4)
body_str = <<-BODY 
 And what is piety, and what is impiety?
BODY

msg40 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg40.send_msg
    msg40.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Piety is doing as I am doing; that is to say, prosecuting any
one who is guilty of murder, sacrilege, or of any similar crime--whether
he be your father or mother, or whoever he may be--that makes no
difference; and not to prosecute them is impiety. And please to
consider, Socrates, what a notable proof I will give you of the truth
of my words, a proof which I have already given to others:--of the
principle, I mean, that the impious, whoever he may be, ought not to go
unpunished. For do not men regard Zeus as the best and most righteous of
the gods?--and yet they admit that he bound his father (Cronos) because
he wickedly devoured his sons, and that he too had punished his own
father (Uranus) for a similar reason, in a nameless manner. And yet when
I proceed against my father, they are angry with me. So inconsistent are
they in their way of talking when the gods are concerned, and when I am
concerned.
BODY

msg41 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg41.send_msg
    msg41.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 May not this be the reason, Euthyphro, why I am charged with
impiety--that I cannot away with these stories about the gods? and
therefore I suppose that people think me wrong. But, as you who are well
informed about them approve of them, I cannot do better than assent to
your superior wisdom. What else can I say, confessing as I do, that
I know nothing about them? Tell me, for the love of Zeus, whether you
really believe that they are true.
BODY

msg42 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg42.send_msg
    msg42.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Yes, Socrates; and things more wonderful still, of which the
world is in ignorance.
BODY

msg43 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg43.send_msg
    msg43.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 And do you really believe that the gods fought with one
another, and had dire quarrels, battles, and the like, as the poets
say, and as you may see represented in the works of great artists?
The temples are full of them; and notably the robe of Athene, which is
carried up to the Acropolis at the great Panathenaea, is embroidered
with them. Are all these tales of the gods true, Euthyphro?
BODY

msg44 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.days.ago
    })

    msg44.send_msg
    msg44.update({updated_at: 6.days.ago})




body_str = <<-BODY 
 Yes, Socrates; and, as I was saying, I can tell you, if you
would like to hear them, many other things about the gods which would
quite amaze you.
BODY

msg45 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg45.send_msg
    msg45.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 I dare say; and you shall tell me them at some other time when
I have leisure. But just at present I would rather hear from you a
more precise answer, which you have not as yet given, my friend, to the
question, What is 'piety'? When asked, you only replied, Doing as you
do, charging your father with murder.
BODY

msg46 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg46.send_msg
    msg46.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 And what I said was true, Socrates.
BODY

msg47 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg47.send_msg
    msg47.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 No doubt, Euthyphro; but you would admit that there are many
other pious acts?
BODY

msg48 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg48.send_msg
    msg48.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 There are.
BODY

msg49 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg49.send_msg
    msg49.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Remember that I did not ask you to give me two or three
examples of piety, but to explain the general idea which makes all pious
things to be pious. Do you not recollect that there was one idea which
made the impious impious, and the pious pious?
BODY

msg50 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg50.send_msg
    msg50.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 I remember.
BODY

msg51 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg51.send_msg
    msg51.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Tell me what is the nature of this idea, and then I shall
have a standard to which I may look, and by which I may measure actions,
whether yours or those of any one else, and then I shall be able to say
that such and such an action is pious, such another impious.
BODY

msg52 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg52.send_msg
    msg52.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 I will tell you, if you like.
BODY

msg53 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg53.send_msg
    msg53.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 I should very much like.
BODY

msg54 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg54.send_msg
    msg54.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Piety, then, is that which is dear to the gods, and impiety
is that which is not dear to them.
BODY

msg55 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg55.send_msg
    msg55.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Very good, Euthyphro; you have now given me the sort of answer
which I wanted. But whether what you say is true or not I cannot as yet
tell, although I make no doubt that you will prove the truth of your
words.
BODY

msg56 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg56.send_msg
    msg56.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Of course.
BODY

msg57 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.days.ago
    })

    msg57.send_msg
    msg57.update({updated_at: 5.days.ago})




body_str = <<-BODY 
 Come, then, and let us examine what we are saying. That thing
or person which is dear to the gods is pious, and that thing or person
which is hateful to the gods is impious, these two being the extreme
opposites of one another. Was not that said?
BODY

msg58 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg58.send_msg
    msg58.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 It was.
BODY

msg59 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg59.send_msg
    msg59.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 And well said?
BODY

msg60 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg60.send_msg
    msg60.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Yes, Socrates, I thought so; it was certainly said.
BODY

msg61 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg61.send_msg
    msg61.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 And further, Euthyphro, the gods were admitted to have
enmities and hatreds and differences?
BODY

msg62 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg62.send_msg
    msg62.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Yes, that was also said.
BODY

msg63 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg63.send_msg
    msg63.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 And what sort of difference creates enmity and anger? Suppose
for example that you and I, my good friend, differ about a number; do
differences of this sort make us enemies and set us at variance with one
another? Do we not go at once to arithmetic, and put an end to them by a
sum?
BODY

msg64 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg64.send_msg
    msg64.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 True.
BODY

msg65 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg65.send_msg
    msg65.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Or suppose that we differ about magnitudes, do we not quickly
end the differences by measuring?
BODY

msg66 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg66.send_msg
    msg66.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 Very true.
BODY

msg67 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg67.send_msg
    msg67.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 And we end a controversy about heavy and light by resorting to
a weighing machine?
BODY

msg68 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.days.ago
    })

    msg68.send_msg
    msg68.update({updated_at: 4.days.ago})




body_str = <<-BODY 
 To be sure.
BODY

msg69 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg69.send_msg
    msg69.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 But what differences are there which cannot be thus decided,
and which therefore make us angry and set us at enmity with one another?
I dare say the answer does not occur to you at the moment, and therefore
I will suggest that these enmities arise when the matters of difference
are the just and unjust, good and evil, honourable and dishonourable.
Are not these the points about which men differ, and about which when we
are unable satisfactorily to decide our differences, you and I and all
of us quarrel, when we do quarrel? (Compare Alcib.)
BODY

msg70 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg70.send_msg
    msg70.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Yes, Socrates, the nature of the differences about which we
quarrel is such as you describe.
BODY

msg71 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg71.send_msg
    msg71.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 And the quarrels of the gods, noble Euthyphro, when they
occur, are of a like nature?
BODY

msg72 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg72.send_msg
    msg72.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Certainly they are.
BODY

msg73 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg73.send_msg
    msg73.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 They have differences of opinion, as you say, about good and
evil, just and unjust, honourable and dishonourable: there would
have been no quarrels among them, if there had been no such
differences--would there now?
BODY

msg74 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg74.send_msg
    msg74.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 You are quite right.
BODY

msg75 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg75.send_msg
    msg75.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Does not every man love that which he deems noble and just and
good, and hate the opposite of them?
BODY

msg76 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg76.send_msg
    msg76.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Very true.
BODY

msg77 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg77.send_msg
    msg77.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 But, as you say, people regard the same things, some as just
and others as unjust,--about these they dispute; and so there arise wars
and fightings among them.
BODY

msg78 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg78.send_msg
    msg78.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Very true.
BODY

msg79 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg79.send_msg
    msg79.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Then the same things are hated by the gods and loved by the
gods, and are both hateful and dear to them?
BODY

msg80 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg80.send_msg
    msg80.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 True.
BODY

msg81 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg81.send_msg
    msg81.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 And upon this view the same things, Euthyphro, will be pious
and also impious?
BODY

msg82 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg82.send_msg
    msg82.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 So I should suppose.
BODY

msg83 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg83.send_msg
    msg83.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 Then, my friend, I remark with surprise that you have not
answered the question which I asked. For I certainly did not ask you
to tell me what action is both pious and impious: but now it would seem
that what is loved by the gods is also hated by them. And therefore,
Euthyphro, in thus chastising your father you may very likely be doing
what is agreeable to Zeus but disagreeable to Cronos or Uranus, and what
is acceptable to Hephaestus but unacceptable to Here, and there may be
other gods who have similar differences of opinion.
BODY

msg84 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.days.ago
    })

    msg84.send_msg
    msg84.update({updated_at: 3.days.ago})




body_str = <<-BODY 
 But I believe, Socrates, that all the gods would be agreed as
to the propriety of punishing a murderer: there would be no difference
of opinion about that.
BODY

msg85 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg85.send_msg
    msg85.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Well, but speaking of men, Euthyphro, did you ever hear any
one arguing that a murderer or any sort of evil-doer ought to be let
off?
BODY

msg86 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg86.send_msg
    msg86.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 I should rather say that these are the questions which they
are always arguing, especially in courts of law: they commit all sorts
of crimes, and there is nothing which they will not do or say in their
own defence.
BODY

msg87 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg87.send_msg
    msg87.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 But do they admit their guilt, Euthyphro, and yet say that
they ought not to be punished?
BODY

msg88 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg88.send_msg
    msg88.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 No; they do not.
BODY

msg89 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg89.send_msg
    msg89.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Then there are some things which they do not venture to say
and do: for they do not venture to argue that the guilty are to be
unpunished, but they deny their guilt, do they not?
BODY

msg90 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg90.send_msg
    msg90.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Yes.
BODY

msg91 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg91.send_msg
    msg91.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Then they do not argue that the evil-doer should not be
punished, but they argue about the fact of who the evil-doer is, and
what he did and when?
BODY

msg92 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg92.send_msg
    msg92.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 True.
BODY

msg93 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg93.send_msg
    msg93.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 And the gods are in the same case, if as you assert they
quarrel about just and unjust, and some of them say while others deny
that injustice is done among them. For surely neither God nor man will
ever venture to say that the doer of injustice is not to be punished?
BODY

msg94 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg94.send_msg
    msg94.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 That is true, Socrates, in the main.
BODY

msg95 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg95.send_msg
    msg95.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 But they join issue about the particulars--gods and men alike;
and, if they dispute at all, they dispute about some act which is called
in question, and which by some is affirmed to be just, by others to be
unjust. Is not that true?
BODY

msg96 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.days.ago
    })

    msg96.send_msg
    msg96.update({updated_at: 2.days.ago})




body_str = <<-BODY 
 Quite true.
BODY

msg97 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg97.send_msg
    msg97.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Well then, my dear friend Euthyphro, do tell me, for my better
instruction and information, what proof have you that in the opinion of
all the gods a servant who is guilty of murder, and is put in chains by
the master of the dead man, and dies because he is put in chains before
he who bound him can learn from the interpreters of the gods what he
ought to do with him, dies unjustly; and that on behalf of such an one
a son ought to proceed against his father and accuse him of murder. How
would you show that all the gods absolutely agree in approving of his
act? Prove to me that they do, and I will applaud your wisdom as long as
I live.
BODY

msg98 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg98.send_msg
    msg98.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 It will be a difficult task; but I could make the matter very
clear indeed to you.
BODY

msg99 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg99.send_msg
    msg99.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 I understand; you mean to say that I am not so quick of
apprehension as the judges: for to them you will be sure to prove that
the act is unjust, and hateful to the gods.
BODY

msg100 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg100.send_msg
    msg100.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Yes indeed, Socrates; at least if they will listen to me.
BODY

msg101 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg101.send_msg
    msg101.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 But they will be sure to listen if they find that you are a
good speaker. There was a notion that came into my mind while you were
speaking; I said to myself: 'Well, and what if Euthyphro does prove to
me that all the gods regarded the death of the serf as unjust, how do I
know anything more of the nature of piety and impiety? for granting that
this action may be hateful to the gods, still piety and impiety are not
adequately defined by these distinctions, for that which is hateful
to the gods has been shown to be also pleasing and dear to them.' And
therefore, Euthyphro, I do not ask you to prove this; I will suppose, if
you like, that all the gods condemn and abominate such an action. But I
will amend the definition so far as to say that what all the gods hate
is impious, and what they love pious or holy; and what some of them
love and others hate is both or neither. Shall this be our definition of
piety and impiety?
BODY

msg102 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg102.send_msg
    msg102.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Why not, Socrates?
BODY

msg103 = Econ4.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg103.send_msg
    msg103.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Why not! certainly, as far as I am concerned, Euthyphro, there
is no reason why not. But whether this admission will greatly assist you
in the task of instructing me as you promised, is a matter for you to
consider.
BODY

msg104 = Scon4.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg104.send_msg
    msg104.update({updated_at: 1.days.ago})




      
        Scon4.update({
                             message_timestamp: 1.days.ago,
                             read: true
                           }) 
        Econ4.update({
                             message_timestamp: 1.days.ago,
                             read: true
                           }) 


      MetCon5 = MetaConversation.create();

      Scon5 = soc.conversations.create(title: "Yes, I should say that what", meta_conversation: MetCon5)
      Econ5 = euthyphro.conversations.create(title: "Yes, I should say that what", meta_conversation: MetCon5)
body_str = <<-BODY 
 Yes, I should say that what all the gods love is pious and
holy, and the opposite which they all hate, impious.
BODY

msg105 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg105.send_msg
    msg105.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 Ought we to enquire into the truth of this, Euthyphro, or
simply to accept the mere statement on our own authority and that of
others? What do you say?
BODY

msg106 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg106.send_msg
    msg106.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 We should enquire; and I believe that the statement will
stand the test of enquiry.
BODY

msg107 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg107.send_msg
    msg107.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 We shall know better, my good friend, in a little while. The
point which I should first wish to understand is whether the pious or
holy is beloved by the gods because it is holy, or holy because it is
beloved of the gods.
BODY

msg108 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg108.send_msg
    msg108.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 I do not understand your meaning, Socrates.
BODY

msg109 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg109.send_msg
    msg109.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 I will endeavour to explain: we, speak of carrying and we
speak of being carried, of leading and being led, seeing and being seen.
You know that in all such cases there is a difference, and you know also
in what the difference lies?
BODY

msg110 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 1.days.ago
    })

    msg110.send_msg
    msg110.update({updated_at: 1.days.ago})




body_str = <<-BODY 
 I think that I understand.
BODY

msg111 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 12.hours.ago
    })

    msg111.send_msg
    msg111.update({updated_at: 12.hours.ago})




body_str = <<-BODY 
 And is not that which is beloved distinct from that which
loves?
BODY

msg112 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg112.send_msg
    msg112.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg113 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg113.send_msg
    msg113.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Well; and now tell me, is that which is carried in this state
of carrying because it is carried, or for some other reason?
BODY

msg114 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg114.send_msg
    msg114.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 No; that is the reason.
BODY

msg115 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg115.send_msg
    msg115.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 And the same is true of what is led and of what is seen?
BODY

msg116 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg116.send_msg
    msg116.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 True.
BODY

msg117 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg117.send_msg
    msg117.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 And a thing is not seen because it is visible, but conversely,
visible because it is seen; nor is a thing led because it is in the
state of being led, or carried because it is in the state of being
carried, but the converse of this. And now I think, Euthyphro, that
my meaning will be intelligible; and my meaning is, that any state of
action or passion implies previous action or passion. It does not become
because it is becoming, but it is in a state of becoming because it
becomes; neither does it suffer because it is in a state of suffering,
but it is in a state of suffering because it suffers. Do you not agree?
BODY

msg118 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg118.send_msg
    msg118.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg119 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg119.send_msg
    msg119.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Is not that which is loved in some state either of becoming or
suffering?
BODY

msg120 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg120.send_msg
    msg120.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg121 = Econ5.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg121.send_msg
    msg121.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 And the same holds as in the previous instances; the state of
being loved follows the act of being loved, and not the act the state.
BODY

msg122 = Scon5.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg122.send_msg
    msg122.update({updated_at: 11.hours.ago})




      
        Scon5.update({
                             message_timestamp: 11.hours.ago,
                             read: true
                           }) 
        Econ5.update({
                             message_timestamp: 11.hours.ago,
                             read: true
                           }) 


      MetCon6 = MetaConversation.create();

      Scon6 = soc.conversations.create(title: "Certainly.", meta_conversation: MetCon6)
      Econ6 = euthyphro.conversations.create(title: "Certainly.", meta_conversation: MetCon6)
body_str = <<-BODY 
 Certainly.
BODY

msg123 = Econ6.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg123.send_msg
    msg123.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 And what do you say of piety, Euthyphro: is not piety,
according to your definition, loved by all the gods?
BODY

msg124 = Scon6.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 11.hours.ago
    })

    msg124.send_msg
    msg124.update({updated_at: 11.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg125 = Econ6.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg125.send_msg
    msg125.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Because it is pious or holy, or for some other reason?
BODY

msg126 = Scon6.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg126.send_msg
    msg126.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 No, that is the reason.
BODY

msg127 = Econ6.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg127.send_msg
    msg127.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 It is loved because it is holy, not holy because it is loved?
BODY

msg128 = Scon6.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg128.send_msg
    msg128.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg129 = Econ6.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg129.send_msg
    msg129.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 And that which is dear to the gods is loved by them, and is in
a state to be loved of them because it is loved of them?
BODY

msg130 = Scon6.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg130.send_msg
    msg130.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg131 = Econ6.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg131.send_msg
    msg131.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 Then that which is dear to the gods, Euthyphro, is not holy,
nor is that which is holy loved of God, as you affirm; but they are two
different things.
BODY

msg132 = Scon6.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg132.send_msg
    msg132.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 How do you mean, Socrates?
BODY

msg133 = Econ6.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg133.send_msg
    msg133.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 I mean to say that the holy has been acknowledged by us to be
loved of God because it is holy, not to be holy because it is loved.
BODY

msg134 = Scon6.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg134.send_msg
    msg134.update({updated_at: 10.hours.ago})




      
        Scon6.update({
                             message_timestamp: 10.hours.ago,
                             read: true
                           }) 
        Econ6.update({
                             message_timestamp: 10.hours.ago,
                             read: true
                           }) 


      MetCon7 = MetaConversation.create();

      Scon7 = soc.conversations.create(title: "Yes.", meta_conversation: MetCon7)
      Econ7 = euthyphro.conversations.create(title: "Yes.", meta_conversation: MetCon7)
body_str = <<-BODY 
 Yes.
BODY

msg135 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg135.send_msg
    msg135.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 But that which is dear to the gods is dear to them because it
is loved by them, not loved by them because it is dear to them.
BODY

msg136 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg136.send_msg
    msg136.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 True.
BODY

msg137 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 10.hours.ago
    })

    msg137.send_msg
    msg137.update({updated_at: 10.hours.ago})




body_str = <<-BODY 
 But, friend Euthyphro, if that which is holy is the same with
that which is dear to God, and is loved because it is holy, then that
which is dear to God would have been loved as being dear to God; but if
that which is dear to God is dear to him because loved by him, then that
which is holy would have been holy because loved by him. But now you see
that the reverse is the case, and that they are quite different from
one another. For one (theophiles) is of a kind to be loved cause it
is loved, and the other (osion) is loved because it is of a kind to
be loved. Thus you appear to me, Euthyphro, when I ask you what is
the essence of holiness, to offer an attribute only, and not the
essence--the attribute of being loved by all the gods. But you still
refuse to explain to me the nature of holiness. And therefore, if you
please, I will ask you not to hide your treasure, but to tell me once
more what holiness or piety really is, whether dear to the gods or not
(for that is a matter about which we will not quarrel); and what is
impiety?
BODY

msg138 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg138.send_msg
    msg138.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 I really do not know, Socrates, how to express what I mean.
For somehow or other our arguments, on whatever ground we rest them,
seem to turn round and walk away from us.
BODY

msg139 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg139.send_msg
    msg139.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 Your words, Euthyphro, are like the handiwork of my ancestor
Daedalus; and if I were the sayer or propounder of them, you might say
that my arguments walk away and will not remain fixed where they are
placed because I am a descendant of his. But now, since these notions
are your own, you must find some other gibe, for they certainly, as you
yourself allow, show an inclination to be on the move.
BODY

msg140 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg140.send_msg
    msg140.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 Nay, Socrates, I shall still say that you are the Daedalus
who sets arguments in motion; not I, certainly, but you make them
move or go round, for they would never have stirred, as far as I am
concerned.
BODY

msg141 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg141.send_msg
    msg141.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 Then I must be a greater than Daedalus: for whereas he only
made his own inventions to move, I move those of other people as well.
And the beauty of it is, that I would rather not. For I would give the
wisdom of Daedalus, and the wealth of Tantalus, to be able to detain
them and keep them fixed. But enough of this. As I perceive that you are
lazy, I will myself endeavour to show you how you might instruct me in
the nature of piety; and I hope that you will not grudge your labour.
Tell me, then--Is not that which is pious necessarily just?
BODY

msg142 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg142.send_msg
    msg142.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg143 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg143.send_msg
    msg143.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 And is, then, all which is just pious? or, is that which is
pious all just, but that which is just, only in part and not all, pious?
BODY

msg144 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg144.send_msg
    msg144.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 I do not understand you, Socrates.
BODY

msg145 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg145.send_msg
    msg145.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 And yet I know that you are as much wiser than I am, as you
are younger. But, as I was saying, revered friend, the abundance of your
wisdom makes you lazy. Please to exert yourself, for there is no
real difficulty in understanding me. What I mean I may explain by an
illustration of what I do not mean. The poet (Stasinus) sings--
BODY

msg146 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg146.send_msg
    msg146.update({updated_at: 9.hours.ago})




body_str = <<-BODY 

for where there is fear there is also reverence.'
BODY





body_str = <<-BODY 
 By all means.
BODY

msg148 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 9.hours.ago
    })

    msg148.send_msg
    msg148.update({updated_at: 9.hours.ago})




body_str = <<-BODY 
 I should not say that where there is fear there is also
reverence; for I am sure that many persons fear poverty and disease, and
the like evils, but I do not perceive that they reverence the objects of
their fear.
BODY

msg149 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg149.send_msg
    msg149.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Very true.
BODY

msg150 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg150.send_msg
    msg150.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 But where reverence is, there is fear; for he who has a
feeling of reverence and shame about the commission of any action, fears
and is afraid of an ill reputation.
BODY

msg151 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg151.send_msg
    msg151.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 No doubt.
BODY

msg152 = Econ7.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg152.send_msg
    msg152.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Then we are wrong in saying that where there is fear there
is also reverence; and we should say, where there is reverence there is
also fear. But there is not always reverence where there is fear; for
fear is a more extended notion, and reverence is a part of fear, just as
the odd is a part of number, and number is a more extended notion than
the odd. I suppose that you follow me now?
BODY

msg153 = Scon7.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg153.send_msg
    msg153.update({updated_at: 8.hours.ago})




      
        Scon7.update({
                             message_timestamp: 8.hours.ago,
                             read: true
                           }) 
        Econ7.update({
                             message_timestamp: 8.hours.ago,
                             read: true
                           }) 


      MetCon8 = MetaConversation.create();

      Scon8 = soc.conversations.create(title: "Quite well.", meta_conversation: MetCon8)
      Econ8 = euthyphro.conversations.create(title: "Quite well.", meta_conversation: MetCon8)
body_str = <<-BODY 
 Quite well.
BODY

msg154 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg154.send_msg
    msg154.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 That was the sort of question which I meant to raise when
I asked whether the just is always the pious, or the pious always the
just; and whether there may not be justice where there is not piety; for
justice is the more extended notion of which piety is only a part. Do
you dissent?
BODY

msg155 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg155.send_msg
    msg155.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 No, I think that you are quite right.
BODY

msg156 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg156.send_msg
    msg156.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Then, if piety is a part of justice, I suppose that we should
enquire what part? If you had pursued the enquiry in the previous cases;
for instance, if you had asked me what is an even number, and what part
of number the even is, I should have had no difficulty in replying,
a number which represents a figure having two equal sides. Do you not
agree?
BODY

msg157 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg157.send_msg
    msg157.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Yes, I quite agree.
BODY

msg158 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg158.send_msg
    msg158.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 In like manner, I want you to tell me what part of justice
is piety or holiness, that I may be able to tell Meletus not to do me
injustice, or indict me for impiety, as I am now adequately instructed
by you in the nature of piety or holiness, and their opposites.
BODY

msg159 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg159.send_msg
    msg159.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Piety or holiness, Socrates, appears to me to be that part of
justice which attends to the gods, as there is the other part of justice
which attends to men.
BODY

msg160 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg160.send_msg
    msg160.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 That is good, Euthyphro; yet still there is a little point
about which I should like to have further information, What is the
meaning of 'attention'? For attention can hardly be used in the same
sense when applied to the gods as when applied to other things. For
instance, horses are said to require attention, and not every person is
able to attend to them, but only a person skilled in horsemanship. Is it
not so?
BODY

msg161 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg161.send_msg
    msg161.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg162 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg162.send_msg
    msg162.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 I should suppose that the art of horsemanship is the art of
attending to horses?
BODY

msg163 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg163.send_msg
    msg163.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg164 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 8.hours.ago
    })

    msg164.send_msg
    msg164.update({updated_at: 8.hours.ago})




body_str = <<-BODY 
 Nor is every one qualified to attend to dogs, but only the
huntsman?
BODY

msg165 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg165.send_msg
    msg165.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 True.
BODY

msg166 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg166.send_msg
    msg166.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 And I should also conceive that the art of the huntsman is the
art of attending to dogs?
BODY

msg167 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg167.send_msg
    msg167.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg168 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg168.send_msg
    msg168.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 As the art of the oxherd is the art of attending to oxen?
BODY

msg169 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg169.send_msg
    msg169.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 Very true.
BODY

msg170 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg170.send_msg
    msg170.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 In like manner holiness or piety is the art of attending to
the gods?--that would be your meaning, Euthyphro?
BODY

msg171 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg171.send_msg
    msg171.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg172 = Econ8.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg172.send_msg
    msg172.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 And is not attention always designed for the good or benefit
of that to which the attention is given? As in the case of horses,
you may observe that when attended to by the horseman's art they are
benefited and improved, are they not?
BODY

msg173 = Scon8.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg173.send_msg
    msg173.update({updated_at: 7.hours.ago})




      
        Scon8.update({
                             message_timestamp: 7.hours.ago,
                             read: true
                           }) 
        Econ8.update({
                             message_timestamp: 7.hours.ago,
                             read: true
                           }) 


      MetCon9 = MetaConversation.create();

      Scon9 = soc.conversations.create(title: "True.", meta_conversation: MetCon9)
      Econ9 = euthyphro.conversations.create(title: "True.", meta_conversation: MetCon9)
body_str = <<-BODY 
 True.
BODY

msg174 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg174.send_msg
    msg174.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 As the dogs are benefited by the huntsman's art, and the oxen
by the art of the oxherd, and all other things are tended or attended
for their good and not for their hurt?
BODY

msg175 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg175.send_msg
    msg175.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 Certainly, not for their hurt.
BODY

msg176 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 7.hours.ago
    })

    msg176.send_msg
    msg176.update({updated_at: 7.hours.ago})




body_str = <<-BODY 
 But for their good?
BODY

msg177 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg177.send_msg
    msg177.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 Of course.
BODY

msg178 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg178.send_msg
    msg178.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 And does piety or holiness, which has been defined to be the
art of attending to the gods, benefit or improve them? Would you say
that when you do a holy act you make any of the gods better?
BODY

msg179 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg179.send_msg
    msg179.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 No, no; that was certainly not what I meant.
BODY

msg180 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg180.send_msg
    msg180.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 And I, Euthyphro, never supposed that you did. I asked you the
question about the nature of the attention, because I thought that you
did not.
BODY

msg181 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg181.send_msg
    msg181.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 You do me justice, Socrates; that is not the sort of
attention which I mean.
BODY

msg182 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg182.send_msg
    msg182.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 Good: but I must still ask what is this attention to the gods
which is called piety?
BODY

msg183 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg183.send_msg
    msg183.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 It is such, Socrates, as servants show to their masters.
BODY

msg184 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg184.send_msg
    msg184.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 I understand--a sort of ministration to the gods.
BODY

msg185 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg185.send_msg
    msg185.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 Exactly.
BODY

msg186 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg186.send_msg
    msg186.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 Medicine is also a sort of ministration or service, having in
view the attainment of some object--would you not say of health?
BODY

msg187 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg187.send_msg
    msg187.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 I should.
BODY

msg188 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 6.hours.ago
    })

    msg188.send_msg
    msg188.update({updated_at: 6.hours.ago})




body_str = <<-BODY 
 Again, there is an art which ministers to the ship-builder
with a view to the attainment of some result?
BODY

msg189 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg189.send_msg
    msg189.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Yes, Socrates, with a view to the building of a ship.
BODY

msg190 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg190.send_msg
    msg190.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 As there is an art which ministers to the house-builder with a
view to the building of a house?
BODY

msg191 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg191.send_msg
    msg191.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Yes.
BODY

msg192 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg192.send_msg
    msg192.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 And now tell me, my good friend, about the art which ministers
to the gods: what work does that help to accomplish? For you must surely
know if, as you say, you are of all men living the one who is best
instructed in religion.
BODY

msg193 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg193.send_msg
    msg193.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 And I speak the truth, Socrates.
BODY

msg194 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg194.send_msg
    msg194.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Tell me then, oh tell me--what is that fair work which the
gods do by the help of our ministrations?
BODY

msg195 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg195.send_msg
    msg195.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Many and fair, Socrates, are the works which they do.
BODY

msg196 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg196.send_msg
    msg196.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Why, my friend, and so are those of a general. But the chief
of them is easily told. Would you not say that victory in war is the
chief of them?
BODY

msg197 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg197.send_msg
    msg197.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg198 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg198.send_msg
    msg198.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Many and fair, too, are the works of the husbandman, if I
am not mistaken; but his chief work is the production of food from the
earth?
BODY

msg199 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg199.send_msg
    msg199.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 Exactly.
BODY

msg200 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 5.hours.ago
    })

    msg200.send_msg
    msg200.update({updated_at: 5.hours.ago})




body_str = <<-BODY 
 And of the many and fair things done by the gods, which is the
chief or principal one?
BODY

msg201 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg201.send_msg
    msg201.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 I have told you already, Socrates, that to learn all these
things accurately will be very tiresome. Let me simply say that piety or
holiness is learning how to please the gods in word and deed, by prayers
and sacrifices. Such piety is the salvation of families and states,
just as the impious, which is unpleasing to the gods, is their ruin and
destruction.
BODY

msg202 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg202.send_msg
    msg202.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 I think that you could have answered in much fewer words the
chief question which I asked, Euthyphro, if you had chosen. But I see
plainly that you are not disposed to instruct me--clearly not: else why,
when we reached the point, did you turn aside? Had you only answered
me I should have truly learned of you by this time the nature of
piety. Now, as the asker of a question is necessarily dependent on the
answerer, whither he leads I must follow; and can only ask again, what
is the pious, and what is piety? Do you mean that they are a sort of
science of praying and sacrificing?
BODY

msg203 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg203.send_msg
    msg203.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Yes, I do.
BODY

msg204 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg204.send_msg
    msg204.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 And sacrificing is giving to the gods, and prayer is asking of
the gods?
BODY

msg205 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg205.send_msg
    msg205.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Yes, Socrates.
BODY

msg206 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg206.send_msg
    msg206.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Upon this view, then, piety is a science of asking and giving?
BODY

msg207 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg207.send_msg
    msg207.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 You understand me capitally, Socrates.
BODY

msg208 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg208.send_msg
    msg208.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Yes, my friend; the reason is that I am a votary of your
science, and give my mind to it, and therefore nothing which you say
will be thrown away upon me. Please then to tell me, what is the nature
of this service to the gods? Do you mean that we prefer requests and
give gifts to them?
BODY

msg209 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg209.send_msg
    msg209.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Yes, I do.
BODY

msg210 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg210.send_msg
    msg210.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Is not the right way of asking to ask of them what we want?
BODY

msg211 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 4.hours.ago
    })

    msg211.send_msg
    msg211.update({updated_at: 4.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg212 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg212.send_msg
    msg212.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 And the right way of giving is to give to them in return what
they want of us. There would be no meaning in an art which gives to any
one that which he does not want.
BODY

msg213 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg213.send_msg
    msg213.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 Very true, Socrates.
BODY

msg214 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg214.send_msg
    msg214.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 Then piety, Euthyphro, is an art which gods and men have of
doing business with one another?
BODY

msg215 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg215.send_msg
    msg215.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 That is an expression which you may use, if you like.
BODY

msg216 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg216.send_msg
    msg216.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 But I have no particular liking for anything but the truth. I
wish, however, that you would tell me what benefit accrues to the gods
from our gifts. There is no doubt about what they give to us; for there
is no good thing which they do not give; but how we can give any good
thing to them in return is far from being equally clear. If they give
everything and we give nothing, that must be an affair of business in
which we have very greatly the advantage of them.
BODY

msg217 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg217.send_msg
    msg217.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 And do you imagine, Socrates, that any benefit accrues to the
gods from our gifts?
BODY

msg218 = Econ9.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg218.send_msg
    msg218.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 But if not, Euthyphro, what is the meaning of gifts which are
conferred by us upon the gods?
BODY

msg219 = Scon9.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg219.send_msg
    msg219.update({updated_at: 3.hours.ago})




      
        Scon9.update({
                             message_timestamp: 3.hours.ago,
                             read: true
                           }) 
        Econ9.update({
                             message_timestamp: 3.hours.ago,
                             read: true
                           }) 


      MetCon10 = MetaConversation.create();

      Scon10 = soc.conversations.create(title: "What else, but tributes of honour;", meta_conversation: MetCon10)
      Econ10 = euthyphro.conversations.create(title: "What else, but tributes of honour;", meta_conversation: MetCon10)
body_str = <<-BODY 
 What else, but tributes of honour; and, as I was just now
saying, what pleases them?
BODY

msg220 = Econ10.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg220.send_msg
    msg220.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 Piety, then, is pleasing to the gods, but not beneficial or
dear to them?
BODY

msg221 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg221.send_msg
    msg221.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 I should say that nothing could be dearer.
BODY

msg222 = Econ10.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg222.send_msg
    msg222.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 Then once more the assertion is repeated that piety is dear to
the gods?
BODY

msg223 = Scon10.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg223.send_msg
    msg223.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 Certainly.
BODY

msg224 = Econ10.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg224.send_msg
    msg224.update({updated_at: 3.hours.ago})




      
        Scon10.update({
                             message_timestamp: 3.hours.ago,
                             read: true
                           }) 
        Econ10.update({
                             message_timestamp: 3.hours.ago,
                             read: true
                           }) 


      MetCon11 = MetaConversation.create();

      Scon11 = soc.conversations.create(title: "And when you say this, can", meta_conversation: MetCon11)
      Econ11 = euthyphro.conversations.create(title: "And when you say this, can", meta_conversation: MetCon11)
body_str = <<-BODY 
 And when you say this, can you wonder at your words not
standing firm, but walking away? Will you accuse me of being the
Daedalus who makes them walk away, not perceiving that there is another
and far greater artist than Daedalus who makes them go round in a
circle, and he is yourself; for the argument, as you will perceive,
comes round to the same point. Were we not saying that the holy or
pious was not the same with that which is loved of the gods? Have you
forgotten?
BODY

msg225 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 3.hours.ago
    })

    msg225.send_msg
    msg225.update({updated_at: 3.hours.ago})




body_str = <<-BODY 
 I quite remember.
BODY

msg226 = Econ11.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg226.send_msg
    msg226.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 And are you not saying that what is loved of the gods is holy;
and is not this the same as what is dear to them--do you see?
BODY

msg227 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg227.send_msg
    msg227.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 True.
BODY

msg228 = Econ11.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg228.send_msg
    msg228.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 Then either we were wrong in our former assertion; or, if we
were right then, we are wrong now.
BODY

msg229 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg229.send_msg
    msg229.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 One of the two must be true.
BODY

msg230 = Econ11.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg230.send_msg
    msg230.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 Then we must begin again and ask, What is piety? That is an
enquiry which I shall never be weary of pursuing as far as in me lies;
and I entreat you not to scorn me, but to apply your mind to the utmost,
and tell me the truth. For, if any man knows, you are he; and therefore
I must detain you, like Proteus, until you tell. If you had not
certainly known the nature of piety and impiety, I am confident that
you would never, on behalf of a serf, have charged your aged father with
murder. You would not have run such a risk of doing wrong in the sight
of the gods, and you would have had too much respect for the opinions
of men. I am sure, therefore, that you know the nature of piety and
impiety. Speak out then, my dear Euthyphro, and do not hide your
knowledge.
BODY

msg231 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg231.send_msg
    msg231.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 Another time, Socrates; for I am in a hurry, and must go now.
BODY

msg232 = Econ11.messages.create({
    source_address: "euthyphro#{EMAIL_SIGNATURE}",
    target_address: "daimonic#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg232.send_msg
    msg232.update({updated_at: 2.hours.ago})




body_str = <<-BODY 
 Alas! my companion, and will you leave me in despair? I was
hoping that you would instruct me in the nature of piety and impiety;
and then I might have cleared myself of Meletus and his indictment. I
would have told him that I had been enlightened by Euthyphro, and had
given up rash innovations and speculations, in which I indulged only
through ignorance, and that now I am about to lead a better life.

BODY

msg233 = Scon11.messages.create({
    source_address: "daimonic#{EMAIL_SIGNATURE}",
    target_address: "euthyphro#{EMAIL_SIGNATURE}",
    body: body_str,
    created_at: 2.hours.ago
    })

    msg233.send_msg
    msg233.update({updated_at: 2.hours.ago})


