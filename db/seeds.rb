# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




User.destroy_all

soc = User.create({fname: "Socrates", lname:"of Athens", username: "daimonic", pass: "Iamplato1"})
fred = User.create({fname: "Friedrich", lname:"Nietzsche", username: "ubermensch", pass: "Will2Power"})

Conversation.destroy_all
MessageConversationLink.destroy_all
Message.destroy_all

con = fred.conversations.create()

con.messages.create({
  source_address: "bill.jones@hotmail.com",
  target_address: "ubermensch#{EMAIL_SIGNATURE}, fred.jones@hotmail.com",
  title: "Would you like to build a snowman?",
  body: "It'll be pretty and have a hat and a nose and I love it so much!!!",
  time_created: 8.years.ago
  })

con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "The Will to Truth, which is to tempt us to many a hazardous enterprise, the famous Truthfulness of which all philosophers have hitherto spoken with respect, what questions has this Will to Truth not laid before us! What strange, perplexing, questionable questions! It is already a long story; yet it seems as if it were hardly commenced. Is it any wonder if we at last grow distrustful, lose patience, and turn impatiently away? That this Sphinx teaches us at last to ask questions ourselves? WHO is it really that puts questions to us here? WHAT really is this \"Will to Truth\" in us? In fact we made a long halt at the question as to the origin of this Will—until at last we came to an absolute standstill before a yet more fundamental question. We inquired about the VALUE of this Will. Granted that we want the truth: WHY NOT RATHER untruth? And uncertainty? Even ignorance? The problem of the value of truth presented itself before us—or was it we who presented ourselves before the problem? Which of us is the Oedipus here? Which the Sphinx? It would seem to be a r ezvous of questions and notes of interrogation. And could it be believed that it at last seems to us as if the problem had never been propounded before, as if we were the first to discern it, get a sight of it, and RISK RAISING it? For there is risk in raising it, perhaps there is no greater risk.",
  time_created: 7.years.ago
  })


con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: " Every select man strives instinctively for a citadel and a privacy, where he is FREE from the crowd, the many, the majority—where he may forget \"men who are the rule,\" as their exception;—exclusive only of the case in which he is pushed straight to such men by a still stronger instinct, as a discerner in the great and exceptional sense. Whoever, in intercourse with men, does not occasionally glisten in all the green and grey colours of distress, owing to disgust, satiety, sympathy, gloominess, and solitariness, is assuredly not a man of elevated tastes; supposing, however, that he does not voluntarily take all this burden and disgust upon himself, that he persistently avoids it, and remains, as I said, quietly and proudly hidden in his citadel, one thing is then certain: he was not made, he was not predestined for knowledge. For as such, he would one day have to say to himself: \"The devil take my good taste! but 'the rule' is more interesting than the exception—than myself, the exception!\" And he would go DOWN, and above all, he would go \"inside.\" The long and serious study of the AVERAGE man—and consequently much disguise, self-overcoming, familiarity, and bad intercourse (all intercourse is bad intercourse except with one's equals):—that constitutes a necessary part of the life-history of every philosopher; perhaps the most disagreeable, odious, and disappointing part. If he is fortunate, however, as a favourite child of knowledge should be, he will meet with suitable auxiliaries who will shorten and lighten his task; I mean so-called cynics, those who simply recognize the animal, the commonplace and \"the rule\" in themselves, and at the same time have so much spirituality and ticklishness as to make them talk of themselves and their like BEFORE WITNESSES—sometimes they wallow, even in books, as on their own dung-hill. Cynicism is the only form in which base souls approach what is called honesty; and the higher man must open his ears to all the coarser or finer cynicism, and congratulate himself when the clown becomes shameless right before him, or the scientific satyr speaks out. There are even cases where enchantment mixes with the disgust—namely, where by a freak of nature, genius is bound to some such indiscreet billy-goat and ape, as in the case of the Abbe Galiani, the profoundest, acutest, and perhaps also filthiest man of his century—he was far profounder than Voltaire, and consequently also, a good deal more silent. It happens more frequently, as has been hinted, that a scientific head is placed on an ape's body, a fine exceptional understanding in a base soul, an occurrence by no means rare, especially among doctors and moral physiologists. And whenever anyone speaks without bitterness, or rather quite innocently, of man as a belly with two requirements, and a head with one; whenever any one sees, seeks, and WANTS to see only hunger, sexual instinct, and vanity as the real and only motives of human actions; in short, when any one speaks \"badly\"—and not even \"ill\"—of man, then ought the lover of knowledge to hearken attentively and diligently; he ought, in general, to have an open ear wherever there is talk without indignation. For the indignant man, and he who perpetually tears and lacerates himself with his own teeth (or, in place of himself, the world, God, or society), may indeed, morally speaking, stand higher than the laughing and self-satisfied satyr, but in every other sense he is the more ordinary, more indifferent, and less instructive case. And no one is such a LIAR as the indignant man.",
  time_created: 6.years.ago
  })


con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "It is difficult to be understood, especially when one thinks and lives gangasrotogati [Footnote: Like the river Ganges: presto.] among those only who think and live otherwise—namely, kurmagati [Footnote: Like the tortoise: lento.], or at best \"froglike,\" mandeikagati [Footnote: Like the frog: staccato.] (I do everything to be \"difficultly understood\" myself!)—and one should be heartily grateful for the good will to some refinement of interpretation. As regards \"the good fri s,\" however, who are always too easy-going, and think that as fri s they have a right to ease, one does well at the very first to grant them a play-ground and romping-place for misunderstanding—one can thus laugh still; or get rid of them altogether, these good fri s—and laugh then also!",
  time_created: 6.years.ago
  })

con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "What is most difficult to r er from one language into another is the TEMPO of its style, which has its basis in the character of the race, or to speak more physiologically, in the average TEMPO of the assimilation of its nutriment. There are honestly meant translations, which, as involuntary vulgarizations, are almost falsifications of the original, merely because its lively and merry TEMPO (which overleaps and obviates all dangers in word and expression) could not also be r ered. A German is almost incapacitated for PRESTO in his language; consequently also, as may be reasonably inferred, for many of the most delightful and daring NUANCES of free, free-spirited thought. And just as the buffoon and satyr are foreign to him in body and conscience, so Aristophanes and Petronius are untranslatable for him. Everything ponderous, viscous, and pompously clumsy, all long-winded and wearying species of style, are developed in profuse variety among Germans—pardon me for stating the fact that even Goethe's prose, in its mixture of stiffness and elegance, is no exception, as a reflection of the \"good old time\" to which it belongs, and as an expression of German taste at a time when there was still a \"German taste,\" which was a rococo-taste in moribus et artibus. Lessing is an exception, owing to his histrionic nature, which understood much, and was versed in many things; he who was not the translator of Bayle to no purpose, who took refuge willingly in the shadow of Diderot and Voltaire, and still more willingly among the Roman comedy-writers—Lessing loved also free-spiritism in the TEMPO, and flight out of Germany. But how could the German language, even in the prose of Lessing, imitate the TEMPO of Machiavelli, who in his \"Principe\" makes us breathe the dry, fine air of Florence, and cannot help presenting the most serious events in a boisterous allegrissimo, perhaps not without a malicious artistic sense of the contrast he ventures to present—long, heavy, difficult, dangerous thoughts, and a TEMPO of the gallop, and of the best, wantonest humour? Finally, who would venture on a German translation of Petronius, who, more than any great musician hitherto, was a master of PRESTO in invention, ideas, and words? What matter in the   about the swamps of the sick, evil world, or of the \"ancient world,\" when like him, one has the feet of a wind, the rush, the breath, the emancipating scorn of a wind, which makes everything healthy, by making everything RUN! And with regard to Aristophanes—that transfiguring, complementary genius, for whose sake one PARDONS all Hellenism for having existed, provided one has understood in its full profundity ALL that there requires pardon and transfiguration; there is nothing that has caused me to meditate more on PLATO'S secrecy and sphinx-like nature, than the happily preserved petit fait that under the pillow of his death-bed there was found no \"Bible,\" nor anything Egyptian, Pythagorean, or Platonic—but a book of Aristophanes. How could even Plato have  ured life—a Greek life which he repudiated—without an Aristophanes!",
  time_created: 6.years.ago
  })

con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "It is the business of the very few to be indep ent; it is a privilege of the strong. And whoever attempts it, even with the best right, but without being OBLIGED to do so, proves that he is probably not only strong, but also daring beyond measure. He enters into a labyrinth, he multiplies a thousandfold the dangers which life in itself already brings with it; not the least of which is that no one can see how and where he loses his way, becomes isolated, and is torn piecemeal by some minotaur of conscience. Supposing such a one comes to grief, it is so far from the comprehension of men that they neither feel it, nor sympathize with it. And he cannot any longer go back! He cannot even go back again to the sympathy of men!",
  time_created: 5.years.ago
  })

con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "Our deepest insights must—and should—appear as follies, and under certain circumstances as crimes, when they come unauthorizedly to the ears of those who are not disposed and predestined for them. The exoteric and the esoteric, as they were formerly distinguished by philosophers—among the Indians, as among the Greeks, Persians, and Mussulmans, in short, wherever people believed in gradations of rank and NOT in equality and equal rights—are not so much in contradistinction to one another in respect to the exoteric class, standing without, and viewing, estimating, measuring, and judging from the outside, and not from the inside; the more essential distinction is that the class in question views things from below upwards—while the esoteric class views things FROM ABOVE DOWNWARDS. There are heights of the soul from which tragedy itself no longer appears to operate tragically; and if all the woe in the world were taken together, who would dare to decide whether the sight of it would NECESSARILY seduce and constrain to sympathy, and thus to a doubling of the woe?... That which serves the higher class of men for nourishment or refreshment, must be almost poison to an entirely different and lower order of human beings. The virtues of the common man would perhaps mean vice and weakness in a philosopher; it might be possible for a highly developed man, supposing him to degenerate and go to ruin, to acquire qualities thereby alone, for the sake of which he would have to be honoured as a saint in the lower world into which he had sunk. There are books which have an inverse value for the soul and the health according as the inferior soul and the lower vitality, or the higher and more powerful, make use of them. In the former case they are dangerous, disturbing, unsettling books, in the latter case they are herald-calls which summon the bravest to THEIR bravery. Books for the general reader are always ill-smelling books, the odour of paltry people clings to them. Where the populace eat and drink, and even where they reverence, it is accustomed to stink. One should not go into churches if one wishes to breathe PURE air.",
  time_created: 5.years.ago
  })

con2 = fred.conversations.create()

con2.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "ubermensch#{EMAIL_SIGNATURE}",
  title: "Yo Freddy, what is Justice?",
  body: "A couple of us were talking about this and I figured you might have some ideas.",
  time_created: 3.years.ago
  })

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "In the Jewish \"Old Testament,\" the book of divine justice, there are men, things, and sayings on such an immense scale, that Greek and Indian literature has nothing to compare with it. One stands with fear and reverence before those stup ous remains of what man was formerly, and one has sad thoughts about old Asia and its little out-pushed peninsula Europe, which would like, by all means, to figure before Asia as the \"Progress of Mankind.\" To be sure, he who is himself only a sl er, tame house-animal, and knows only the wants of a house-animal (like our cultured people of today, including the Christians of \"cultured\" Christianity), need neither be amazed nor even sad amid those ruins—the taste for the Old Testament is a touchstone with respect to \"great\" and \"small\": perhaps he will find that the New Testament, the book of grace, still appeals more to his heart (there is much of the odour of the genuine, t er, stupid beadsman and petty soul in it). To have bound up this New Testament (a kind of ROCOCO of taste in every respect) along with the Old Testament into one book, as the \"Bible,\" as \"The Book in Itself,\" is perhaps the greatest audacity and \"sin against the Spirit\" which literary Europe has upon its conscience.",
  time_created: 9.hours.ago})

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "Why Atheism nowadays? \"The father\" in God is thoroughly refuted; equally so \"the judge,\" \"the rewarder.\" Also his \"free will\": he does not hear—and even if he did, he would not know how to help. The worst is that he seems incapable of communicating himself clearly; is he uncertain?—This is what I have made out (by questioning and listening at a variety of conversations) to be the cause of the decline of European theism; it appears to me that though the religious instinct is in vigorous growth,—it rejects the theistic satisfaction with profound distrust.",
  time_created: 8.hours.ago})

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "What does all modern philosophy mainly do? Since Descartes—and indeed more in defiance of him than on the basis of his procedure—an ATTENTAT has been made on the part of all philosophers on the old conception of the soul, under the guise of a criticism of the subject and predicate conception—that is to say, an ATTENTAT on the fundamental presupposition of Christian doctrine. Modern philosophy, as epistemological skepticism, is secretly or openly ANTI-CHRISTIAN, although (for keener ears, be it said) by no means anti-religious. Formerly, in effect, one believed in \"the soul\" as one believed in grammar and the grammatical subject: one said, \"I\" is the condition, \"think\" is the predicate and is conditioned—to think is an activity for which one MUST suppose a subject as cause. The attempt was then made, with marvelous tenacity and subtlety, to see if one could not get out of this net,—to see if the opposite was not perhaps true: \"think\" the condition, and \"I\" the conditioned; \"I,\" therefore, only a synthesis which has been MADE by thinking itself. KANT really wished to prove that, starting from the subject, the subject could not be proved—nor the object either: the possibility of an APPARENT EXISTENCE of the subject, and therefore of \"the soul,\" may not always have been strange to him,—the thought which once had an immense power on earth as the Vedanta philosophy.",
  time_created: 6.hours.ago})

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "There is a great ladder of religious cruelty, with many rounds; but three of these are the most important. Once on a time men sacrificed human beings to their God, and perhaps just those they loved the best—to this category belong the firstling sacrifices of all primitive religions, and also the sacrifice of the Emperor Tiberius in the Mithra-Grotto on the Island of Capri, that most terrible of all Roman anachronisms. Then, during the moral epoch of mankind, they sacrificed to their God the strongest instincts they possessed, their \"nature\"; THIS festal joy shines in the cruel glances of ascetics and \"anti-natural\" fanatics. Finally, what still remained to be sacrificed? Was it not necessary in the   for men to sacrifice everything comforting, holy, healing, all hope, all faith in hidden harmonies, in future blessedness and justice? Was it not necessary to sacrifice God himself, and out of cruelty to themselves to worship stone, stupidity, gravity, fate, nothingness? To sacrifice God for nothingness—this paradoxical mystery of the ultimate cruelty has been reserved for the rising generation; we all know something thereof already.",
  time_created: 5.hours.ago})

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "Whoever, like myself, prompted by some enigmatical desire, has long  eavoured to go to the bottom of the question of pessimism and free it from the half-Christian, half-German narrowness and stupidity in which it has finally presented itself to this century, namely, in the form of Schopenhauer's philosophy; whoever, with an Asiatic and super-Asiatic eye, has actually looked inside, and into the most world-renouncing of all possible modes of thought—beyond good and evil, and no longer like Buddha and Schopenhauer, under the dominion and delusion of morality,—whoever has done this, has perhaps just thereby, without really desiring it, opened his eyes to behold the opposite ideal: the ideal of the most world-approving, exuberant, and vivacious man, who has not only learnt to compromise and arrange with that which was and is, but wishes to have it again AS IT WAS AND IS, for all eternity, insatiably calling out da capo, not only to himself, but to the whole piece and play; and not only the play, but actually to him who requires the play—and makes it necessary; because he always requires himself anew—and makes himself necessary.—What? And this would not be—circulus vitiosus deus?",
  time_created: 4.hours.ago})

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "The distance, and as it were the space around man, grows with the strength of his intellectual vision and insight: his world becomes profounder; new stars, new enigmas, and notions are ever coming into view. Perhaps everything on which the intellectual eye has exercised its acuteness and profundity has just been an occasion for its exercise, something of a game, something for children and childish minds. Perhaps the most solemn conceptions that have caused the most fighting and suffering, the conceptions \"God\" and \"sin,\" will one day seem to us of no more importance than a child's plaything or a child's pain seems to an old man;—and perhaps another plaything and another pain will then be necessary once more for \"the old man\"—always childish enough, an eternal child!",
  time_created: 3.hours.ago})

con2.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "ubermensch#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "That's really not relevant to what I was asking about. Did you read my question at all?",
  time_created: 5.hours.ago})

meno = User.create({fname: "Meno", lname:"of Thessalonia", username: "meno", pass: "12345678"})

con3 = soc.conversations.create()

body_str = <<-BODY
 O Meno, there was a time when the Thessalians were famous
among the other Hellenes only for their riches and their riding; but
now, if I am not mistaken, they are equally famous for their wisdom,
especially at Larisa, which is the native city of your friend
Aristippus. And this is Gorgias' doing; for when he came there, the
flower of the Aleuadae, among them your admirer Aristippus, and the
other chiefs of the Thessalians, fell in love with his wisdom. And he
has taught you the habit of answering questions in a grand and bold
style, which becomes those who know, and is the style in which he
himself answers all comers; and any Hellene who likes may ask him
anything. How different is our lot! my dear Meno. Here at Athens there
is a dearth of the commodity, and all wisdom seems to have emigrated
from us to you. I am certain that if you were to ask any Athenian
whether virtue was natural or acquired, he would laugh in your face,
and say: 'Stranger, you have far too good an opinion of me, if you think
that I can answer your question. For I literally do not know what virtue
is, and much less whether it is acquired by teaching or not.' And I
myself, Meno, living as I do in this region of poverty, am as poor as
the rest of the world; and I confess with shame that I know literally
nothing about virtue; and when I do not know the 'quid' of anything how
can I know the 'quale'? How, if I knew nothing at all of Meno, could
I tell if he was fair, or the opposite of fair; rich and noble, or the
reverse of rich and noble? Do you think that I could?
BODY

con3.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con4 = soc.conversations.create()



body_str = <<-BODY
 No, indeed. But are you in earnest, Socrates, in saying that you
do not know what virtue is? And am I to carry back this report of you to
Thessaly?
BODY

con4.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con5 = soc.conversations.create()



body_str = <<-BODY
 Not only that, my dear boy, but you may say further that I
have never known of any one else who did, in my judgment.
BODY

con5.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con6 = soc.conversations.create()



body_str = <<-BODY
 Then you have never met Gorgias when he was at Athens?
BODY

con6.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, I have.
BODY

con6.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con7 = soc.conversations.create()



body_str = <<-BODY
 And did you not think that he knew?
BODY

con7.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I have not a good memory, Meno, and therefore I cannot now
tell what I thought of him at the time. And I dare say that he did know,
and that you know what he said: please, therefore, to remind me of what
he said; or, if you would rather, tell me your own view; for I suspect
that you and he think much alike.
BODY

con7.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Very true.
BODY

con7.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then as he is not here, never mind him, and do you tell me:
By the gods, Meno, be generous, and tell me what you say that virtue is;
for I shall be truly delighted to find that I have been mistaken, and
that you and Gorgias do really have this knowledge; although I have been
just saying that I have never found anybody who had.
BODY

con7.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 There will be no difficulty, Socrates, in answering your question.
Let us take first the virtue of a man--he should know how to administer
the state, and in the administration of it to benefit his friends
and harm his enemies; and he must also be careful not to suffer harm
himself. A woman's virtue, if you wish to know about that, may also
be easily described: her duty is to order her house, and keep what is
indoors, and obey her husband. Every age, every condition of life, young
or old, male or female, bond or free, has a different virtue: there are
virtues numberless, and no lack of definitions of them; for virtue is
relative to the actions and ages of each of us in all that we do. And
the same may be said of vice, Socrates (Compare Arist. Pol.).
BODY

con7.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con8 = soc.conversations.create()



body_str = <<-BODY
 How fortunate I am, Meno! When I ask you for one virtue, you
present me with a swarm of them (Compare Theaet.), which are in your
keeping. Suppose that I carry on the figure of the swarm, and ask of
you, What is the nature of the bee? and you answer that there are many
kinds of bees, and I reply: But do bees differ as bees, because there
are many and different kinds of them; or are they not rather to be
distinguished by some other quality, as for example beauty, size, or
shape? How would you answer me?
BODY

con8.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con9 = soc.conversations.create()



body_str = <<-BODY
 I should answer that bees do not differ from one another, as bees.
BODY

con9.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con10 = soc.conversations.create()



body_str = <<-BODY
 And if I went on to say: That is what I desire to know, Meno;
tell me what is the quality in which they do not differ, but are all
alike;--would you be able to answer?
BODY

con10.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con11 = soc.conversations.create()



body_str = <<-BODY
 I should.
BODY

con11.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con12 = soc.conversations.create()



body_str = <<-BODY
 And so of the virtues, however many and different they may be,
they have all a common nature which makes them virtues; and on this he
who would answer the question, 'What is virtue?' would do well to have
his eye fixed: Do you understand?
BODY

con12.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I am beginning to understand; but I do not as yet take hold of the
question as I could wish.
BODY

con12.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con13 = soc.conversations.create()



body_str = <<-BODY
 When you say, Meno, that there is one virtue of a man, another
of a woman, another of a child, and so on, does this apply only to
virtue, or would you say the same of health, and size, and strength? Or
is the nature of health always the same, whether in man or woman?
BODY

con13.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I should say that health is the same, both in man and woman.
BODY

con13.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con14 = soc.conversations.create()



body_str = <<-BODY
 And is not this true of size and strength? If a woman is
strong, she will be strong by reason of the same form and of the same
strength subsisting in her which there is in the man. I mean to say that
strength, as strength, whether of man or woman, is the same. Is there
any difference?
BODY

con14.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con15 = soc.conversations.create()



body_str = <<-BODY
 I think not.
BODY

con15.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con16 = soc.conversations.create()



body_str = <<-BODY
 And will not virtue, as virtue, be the same, whether in a
child or in a grown-up person, in a woman or in a man?
BODY

con16.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I cannot help feeling, Socrates, that this case is different from
the others.
BODY

con16.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con17 = soc.conversations.create()



body_str = <<-BODY
 But why? Were you not saying that the virtue of a man was to
order a state, and the virtue of a woman was to order a house?
BODY

con17.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con18 = soc.conversations.create()



body_str = <<-BODY
 I did say so.
BODY

con18.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And can either house or state or anything be well ordered
without temperance and without justice?
BODY

con18.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con19 = soc.conversations.create()



body_str = <<-BODY
 Certainly not.
BODY

con19.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then they who order a state or a house temperately or justly
order them with temperance and justice?
BODY

con19.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con20 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con20.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then both men and women, if they are to be good men and women,
must have the same virtues of temperance and justice?
BODY

con20.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con20.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con21 = soc.conversations.create()



body_str = <<-BODY
 And can either a young man or an elder one be good, if they
are intemperate and unjust?
BODY

con21.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 They cannot.
BODY

con21.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con22 = soc.conversations.create()



body_str = <<-BODY
 They must be temperate and just?
BODY

con22.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con23 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con23.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con24 = soc.conversations.create()



body_str = <<-BODY
 Then all men are good in the same way, and by participation in
the same virtues?
BODY

con24.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Such is the inference.
BODY

con24.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con25 = soc.conversations.create()



body_str = <<-BODY
 And they surely would not have been good in the same way,
unless their virtue had been the same?
BODY

con25.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 They would not.
BODY

con25.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con26 = soc.conversations.create()



body_str = <<-BODY
 Then now that the sameness of all virtue has been proven, try
and remember what you and Gorgias say that virtue is.
BODY

con26.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Will you have one definition of them all?
BODY

con26.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con27 = soc.conversations.create()



body_str = <<-BODY
 That is what I am seeking.
BODY

con27.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con28 = soc.conversations.create()



body_str = <<-BODY
 If you want to have one definition of them all, I know not what to
say, but that virtue is the power of governing mankind.
BODY

con28.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con29 = soc.conversations.create()



body_str = <<-BODY
 And does this definition of virtue include all virtue? Is
virtue the same in a child and in a slave, Meno? Can the child govern
his father, or the slave his master; and would he who governed be any
longer a slave?
BODY

con29.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con30 = soc.conversations.create()



body_str = <<-BODY
 I think not, Socrates.
BODY

con30.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con31 = soc.conversations.create()



body_str = <<-BODY
 No, indeed; there would be small reason in that. Yet once
more, fair friend; according to you, virtue is 'the power of governing;'
but do you not add 'justly and not unjustly'?
BODY

con31.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, Socrates; I agree there; for justice is virtue.
BODY

con31.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con32 = soc.conversations.create()



body_str = <<-BODY
 Would you say 'virtue,' Meno, or 'a virtue'?
BODY

con32.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con33 = soc.conversations.create()



body_str = <<-BODY
 What do you mean?
BODY

con33.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con34 = soc.conversations.create()



body_str = <<-BODY
 I mean as I might say about anything; that a round, for
example, is 'a figure' and not simply 'figure,' and I should adopt this
mode of speaking, because there are other figures.
BODY

con34.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con35 = soc.conversations.create()



body_str = <<-BODY
 Quite right; and that is just what I am saying about virtue--that
there are other virtues as well as justice.
BODY

con35.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con36 = soc.conversations.create()



body_str = <<-BODY
 What are they? tell me the names of them, as I would tell you
the names of the other figures if you asked me.
BODY

con36.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con37 = soc.conversations.create()



body_str = <<-BODY
 Courage and temperance and wisdom and magnanimity are virtues; and
there are many others.
BODY

con37.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con38 = soc.conversations.create()



body_str = <<-BODY
 Yes, Meno; and again we are in the same case: in searching
after one virtue we have found many, though not in the same way as
before; but we have been unable to find the common virtue which runs
through them all.
BODY

con38.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con39 = soc.conversations.create()



body_str = <<-BODY
 Why, Socrates, even now I am not able to follow you in the attempt
to get at one common notion of virtue as of other things.
BODY

con39.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con40 = soc.conversations.create()



body_str = <<-BODY
 No wonder; but I will try to get nearer if I can, for you know
that all things have a common notion. Suppose now that some one asked
you the question which I asked before: Meno, he would say, what is
figure? And if you answered 'roundness,' he would reply to you, in
my way of speaking, by asking whether you would say that roundness is
'figure' or 'a figure;' and you would answer 'a figure.'
BODY

con40.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Certainly.
BODY

con40.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And for this reason--that there are other figures?
BODY

con40.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con41 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con41.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con42 = soc.conversations.create()



body_str = <<-BODY
 And if he proceeded to ask, What other figures are there? you
would have told him.
BODY

con42.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con43 = soc.conversations.create()



body_str = <<-BODY
 I should.
BODY

con43.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And if he similarly asked what colour is, and you answered
whiteness, and the questioner rejoined, Would you say that whiteness is
colour or a colour? you would reply, A colour, because there are other
colours as well.
BODY

con43.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con44 = soc.conversations.create()



body_str = <<-BODY
 I should.
BODY

con44.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con45 = soc.conversations.create()



body_str = <<-BODY
 And if he had said, Tell me what they are?--you would have
told him of other colours which are colours just as much as whiteness.
BODY

con45.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con46 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con46.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con47 = soc.conversations.create()



body_str = <<-BODY
 And suppose that he were to pursue the matter in my way, he
would say: Ever and anon we are landed in particulars, but this is not
what I want; tell me then, since you call them by a common name, and
say that they are all figures, even when opposed to one another, what
is that common nature which you designate as figure--which contains
straight as well as round, and is no more one than the other--that would
be your mode of speaking?
BODY

con47.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con48 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con48.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con49 = soc.conversations.create()



body_str = <<-BODY
 And in speaking thus, you do not mean to say that the round
is round any more than straight, or the straight any more straight than
round?
BODY

con49.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Certainly not.
BODY

con49.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con50 = soc.conversations.create()



body_str = <<-BODY
 You only assert that the round figure is not more a figure
than the straight, or the straight than the round?
BODY

con50.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Very true.
BODY

con50.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 To what then do we give the name of figure? Try and answer.
Suppose that when a person asked you this question either about figure
or colour, you were to reply, Man, I do not understand what you want,
or know what you are saying; he would look rather astonished and say:
Do you not understand that I am looking for the 'simile in multis'? And
then he might put the question in another form: Meno, he might say, what
is that 'simile in multis' which you call figure, and which includes
not only round and straight figures, but all? Could you not answer that
question, Meno? I wish that you would try; the attempt will be good
practice with a view to the answer about virtue.
BODY

con50.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I would rather that you should answer, Socrates.
BODY

con50.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con51 = soc.conversations.create()



body_str = <<-BODY
 Shall I indulge you?
BODY

con51.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 By all means.
BODY

con51.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con52 = soc.conversations.create()



body_str = <<-BODY
 And then you will tell me about virtue?
BODY

con52.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con53 = soc.conversations.create()



body_str = <<-BODY
 I will.
BODY

con53.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con54 = soc.conversations.create()



body_str = <<-BODY
 Then I must do my best, for there is a prize to be won.
BODY

con54.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con55 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con55.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con56 = soc.conversations.create()



body_str = <<-BODY
 Well, I will try and explain to you what figure is. What do
you say to this answer?--Figure is the only thing which always follows
colour. Will you be satisfied with it, as I am sure that I should be, if
you would let me have a similar definition of virtue?
BODY

con56.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con57 = soc.conversations.create()



body_str = <<-BODY
 But, Socrates, it is such a simple answer.
BODY

con57.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con58 = soc.conversations.create()



body_str = <<-BODY
 Why simple?
BODY

con58.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con59 = soc.conversations.create()



body_str = <<-BODY
 Because, according to you, figure is that which always follows
colour.
BODY

con59.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con60 = soc.conversations.create()





 con61 = soc.conversations.create()



body_str = <<-BODY
 But if a person were to say that he does not know what colour is,
any more than what figure is--what sort of answer would you have given
him?
BODY

con61.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I should have told him the truth. And if he were a philosopher
of the eristic and antagonistic sort, I should say to him: You have my
answer, and if I am wrong, your business is to take up the argument and
refute me. But if we were friends, and were talking as you and I are
now, I should reply in a milder strain and more in the dialectician's
vein; that is to say, I should not only speak the truth, but I should
make use of premises which the person interrogated would be willing to
admit. And this is the way in which I shall endeavour to approach you.
You will acknowledge, will you not, that there is such a thing as an
end, or termination, or extremity?--all which words I use in the same
sense, although I am aware that Prodicus might draw distinctions about
them: but still you, I am sure, would speak of a thing as ended or
terminated--that is all which I am saying--not anything very difficult.
BODY

con61.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con62 = soc.conversations.create()



body_str = <<-BODY
 Yes, I should; and I believe that I understand your meaning.
BODY

con62.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con63 = soc.conversations.create()



body_str = <<-BODY
 And you would speak of a surface and also of a solid, as for
example in geometry.
BODY

con63.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con64 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con64.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Well then, you are now in a condition to understand my
definition of figure. I define figure to be that in which the solid
ends; or, more concisely, the limit of solid.
BODY

con64.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And now, Socrates, what is colour?
BODY

con64.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con65 = soc.conversations.create()



body_str = <<-BODY
 You are outrageous, Meno, in thus plaguing a poor old man to
give you an answer, when you will not take the trouble of remembering
what is Gorgias' definition of virtue.
BODY

con65.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con66 = soc.conversations.create()



body_str = <<-BODY
 When you have told me what I ask, I will tell you, Socrates.
BODY

con66.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con67 = soc.conversations.create()



body_str = <<-BODY
 A man who was blindfolded has only to hear you talking, and he
would know that you are a fair creature and have still many lovers.
BODY

con67.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con68 = soc.conversations.create()



body_str = <<-BODY
 Why do you think so?
BODY

con68.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Why, because you always speak in imperatives: like all
beauties when they are in their prime, you are tyrannical; and also,
as I suspect, you have found out that I have weakness for the fair, and
therefore to humour you I must answer.
BODY

con68.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con69 = soc.conversations.create()



body_str = <<-BODY
 Please do.
BODY

con69.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con70 = soc.conversations.create()



body_str = <<-BODY
 Would you like me to answer you after the manner of Gorgias,
which is familiar to you?
BODY

con70.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con71 = soc.conversations.create()



body_str = <<-BODY
 I should like nothing better.
BODY

con71.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con72 = soc.conversations.create()



body_str = <<-BODY
 Do not he and you and Empedocles say that there are certain
effluences of existence?
BODY

con72.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con73 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con73.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And passages into which and through which the effluences pass?
BODY

con73.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Exactly.
BODY

con73.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con74 = soc.conversations.create()



body_str = <<-BODY
 And some of the effluences fit into the passages, and some of
them are too small or too large?
BODY

con74.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con75 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con75.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con76 = soc.conversations.create()



body_str = <<-BODY
 And there is such a thing as sight?
BODY

con76.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes.
BODY

con76.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con77 = soc.conversations.create()



body_str = <<-BODY
 And now, as Pindar says, 'read my meaning:'--colour is an
effluence of form, commensurate with sight, and palpable to sense.
BODY

con77.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con78 = soc.conversations.create()



body_str = <<-BODY
 That, Socrates, appears to me to be an admirable answer.
BODY

con78.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Why, yes, because it happens to be one which you have been in
the habit of hearing: and your wit will have discovered, I suspect, that
you may explain in the same way the nature of sound and smell, and of
many other similar phenomena.
BODY

con78.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Quite true.
BODY

con78.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con79 = soc.conversations.create()



body_str = <<-BODY
 The answer, Meno, was in the orthodox solemn vein, and
therefore was more acceptable to you than the other answer about figure.
BODY

con79.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes.
BODY

con79.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con80 = soc.conversations.create()



body_str = <<-BODY
 And yet, O son of Alexidemus, I cannot help thinking that
the other was the better; and I am sure that you would be of the
same opinion, if you would only stay and be initiated, and were not
compelled, as you said yesterday, to go away before the mysteries.
BODY

con80.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 But I will stay, Socrates, if you will give me many such answers.
BODY

con80.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con81 = soc.conversations.create()



body_str = <<-BODY
 Well then, for my own sake as well as for yours, I will do
my very best; but I am afraid that I shall not be able to give you very
many as good: and now, in your turn, you are to fulfil your promise, and
tell me what virtue is in the universal; and do not make a singular into
a plural, as the facetious say of those who break a thing, but deliver
virtue to me whole and sound, and not broken into a number of pieces: I
have given you the pattern.
BODY

con81.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con82 = soc.conversations.create()



body_str = <<-BODY
 Well then, Socrates, virtue, as I take it, is when he, who desires
the honourable, is able to provide it for himself; so the poet says, and
I say too--
BODY

con82.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con83 = soc.conversations.create()





 con84 = soc.conversations.create()



body_str = <<-BODY
 And does he who desires the honourable also desire the good?
BODY

con84.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Certainly.
BODY

con84.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con85 = soc.conversations.create()



body_str = <<-BODY
 Then are there some who desire the evil and others who desire
the good? Do not all men, my dear sir, desire good?
BODY

con85.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con86 = soc.conversations.create()



body_str = <<-BODY
 I think not.
BODY

con86.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con87 = soc.conversations.create()



body_str = <<-BODY
 There are some who desire evil?
BODY

con87.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con88 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con88.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con89 = soc.conversations.create()



body_str = <<-BODY
 Do you mean that they think the evils which they desire, to be
good; or do they know that they are evil and yet desire them?
BODY

con89.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con90 = soc.conversations.create()



body_str = <<-BODY
 Both, I think.
BODY

con90.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And do you really imagine, Meno, that a man knows evils to be
evils and desires them notwithstanding?
BODY

con90.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con91 = soc.conversations.create()



body_str = <<-BODY
 Certainly I do.
BODY

con91.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And desire is of possession?
BODY

con91.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, of possession.
BODY

con91.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And does he think that the evils will do good to him who
possesses them, or does he know that they will do him harm?
BODY

con91.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con92 = soc.conversations.create()



body_str = <<-BODY
 There are some who think that the evils will do them good, and
others who know that they will do them harm.
BODY

con92.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And, in your opinion, do those who think that they will do
them good know that they are evils?
BODY

con92.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con93 = soc.conversations.create()



body_str = <<-BODY
 Certainly not.
BODY

con93.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con94 = soc.conversations.create()



body_str = <<-BODY
 Is it not obvious that those who are ignorant of their nature
do not desire them; but they desire what they suppose to be goods
although they are really evils; and if they are mistaken and suppose the
evils to be goods they really desire goods?
BODY

con94.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, in that case.
BODY

con94.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con95 = soc.conversations.create()



body_str = <<-BODY
 Well, and do those who, as you say, desire evils, and think
that evils are hurtful to the possessor of them, know that they will be
hurt by them?
BODY

con95.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 They must know it.
BODY

con95.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con96 = soc.conversations.create()



body_str = <<-BODY
 And must they not suppose that those who are hurt are
miserable in proportion to the hurt which is inflicted upon them?
BODY

con96.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con97 = soc.conversations.create()



body_str = <<-BODY
 How can it be otherwise?
BODY

con97.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con98 = soc.conversations.create()



body_str = <<-BODY
 But are not the miserable ill-fated?
BODY

con98.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con99 = soc.conversations.create()



body_str = <<-BODY
 Yes, indeed.
BODY

con99.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con100 = soc.conversations.create()



body_str = <<-BODY
 And does any one desire to be miserable and ill-fated?
BODY

con100.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con101 = soc.conversations.create()



body_str = <<-BODY
 I should say not, Socrates.
BODY

con101.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con102 = soc.conversations.create()



body_str = <<-BODY
 But if there is no one who desires to be miserable, there is
no one, Meno, who desires evil; for what is misery but the desire and
possession of evil?
BODY

con102.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con103 = soc.conversations.create()



body_str = <<-BODY
 That appears to be the truth, Socrates, and I admit that nobody
desires evil.
BODY

con103.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con104 = soc.conversations.create()



body_str = <<-BODY
 And yet, were you not saying just now that virtue is the
desire and power of attaining good?
BODY

con104.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con105 = soc.conversations.create()



body_str = <<-BODY
 Yes, I did say so.
BODY

con105.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con106 = soc.conversations.create()



body_str = <<-BODY
 But if this be affirmed, then the desire of good is common to
all, and one man is no better than another in that respect?
BODY

con106.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con106.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con107 = soc.conversations.create()



body_str = <<-BODY
 And if one man is not better than another in desiring good, he
must be better in the power of attaining it?
BODY

con107.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con108 = soc.conversations.create()



body_str = <<-BODY
 Exactly.
BODY

con108.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con109 = soc.conversations.create()



body_str = <<-BODY
 Then, according to your definition, virtue would appear to be
the power of attaining good?
BODY

con109.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con110 = soc.conversations.create()



body_str = <<-BODY
 I entirely approve, Socrates, of the manner in which you now view
this matter.
BODY

con110.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con111 = soc.conversations.create()



body_str = <<-BODY
 Then let us see whether what you say is true from another
point of view; for very likely you may be right:--You affirm virtue to
be the power of attaining goods?
BODY

con111.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con112 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con112.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con113 = soc.conversations.create()



body_str = <<-BODY
 And the goods which you mean are such as health and wealth and
the possession of gold and silver, and having office and honour in the
state--those are what you would call goods?
BODY

con113.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con114 = soc.conversations.create()



body_str = <<-BODY
 Yes, I should include all those.
BODY

con114.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then, according to Meno, who is the hereditary friend of the
great king, virtue is the power of getting silver and gold; and would
you add that they must be gained piously, justly, or do you deem this to
be of no consequence? And is any mode of acquisition, even if unjust and
dishonest, equally to be deemed virtue?
BODY

con114.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con115 = soc.conversations.create()



body_str = <<-BODY
 Not virtue, Socrates, but vice.
BODY

con115.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con116 = soc.conversations.create()



body_str = <<-BODY
 Then justice or temperance or holiness, or some other part
of virtue, as would appear, must accompany the acquisition, and without
them the mere acquisition of good will not be virtue.
BODY

con116.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con117 = soc.conversations.create()



body_str = <<-BODY
 Why, how can there be virtue without these?
BODY

con117.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con118 = soc.conversations.create()



body_str = <<-BODY
 And the non-acquisition of gold and silver in a dishonest
manner for oneself or another, or in other words the want of them, may
be equally virtue?
BODY

con118.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con118.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con119 = soc.conversations.create()



body_str = <<-BODY
 Then the acquisition of such goods is no more virtue than the
non-acquisition and want of them, but whatever is accompanied by justice
or honesty is virtue, and whatever is devoid of justice is vice.
BODY

con119.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 It cannot be otherwise, in my judgment.
BODY

con119.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con120 = soc.conversations.create()



body_str = <<-BODY
 And were we not saying just now that justice, temperance, and
the like, were each of them a part of virtue?
BODY

con120.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con121 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con121.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And so, Meno, this is the way in which you mock me.
BODY

con121.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Why do you say that, Socrates?
BODY

con121.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con122 = soc.conversations.create()



body_str = <<-BODY
 Why, because I asked you to deliver virtue into my hands whole
and unbroken, and I gave you a pattern according to which you were to
frame your answer; and you have forgotten already, and tell me that
virtue is the power of attaining good justly, or with justice; and
justice you acknowledge to be a part of virtue.
BODY

con122.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes.
BODY

con122.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then it follows from your own admissions, that virtue is doing
what you do with a part of virtue; for justice and the like are said by
you to be parts of virtue.
BODY

con122.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 What of that?
BODY

con122.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 What of that! Why, did not I ask you to tell me the nature
of virtue as a whole? And you are very far from telling me this; but
declare every action to be virtue which is done with a part of virtue;
as though you had told me and I must already know the whole of virtue,
and this too when frittered away into little pieces. And, therefore, my
dear Meno, I fear that I must begin again and repeat the same question:
What is virtue? for otherwise, I can only say, that every action done
with a part of virtue is virtue; what else is the meaning of saying
that every action done with justice is virtue? Ought I not to ask the
question over again; for can any one who does not know virtue know a
part of virtue?
BODY

con122.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con123 = soc.conversations.create()



body_str = <<-BODY
 No; I do not say that he can.
BODY

con123.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con124 = soc.conversations.create()



body_str = <<-BODY
 Do you remember how, in the example of figure, we rejected any
answer given in terms which were as yet unexplained or unadmitted?
BODY

con124.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con125 = soc.conversations.create()



body_str = <<-BODY
 Yes, Socrates; and we were quite right in doing so.
BODY

con125.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con126 = soc.conversations.create()



body_str = <<-BODY
 But then, my friend, do not suppose that we can explain to any
one the nature of virtue as a whole through some unexplained portion of
virtue, or anything at all in that fashion; we should only have to ask
over again the old question, What is virtue? Am I not right?
BODY

con126.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I believe that you are.
BODY

con126.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con127 = soc.conversations.create()



body_str = <<-BODY
 Then begin again, and answer me, What, according to you and
your friend Gorgias, is the definition of virtue?
BODY

con127.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con128 = soc.conversations.create()



body_str = <<-BODY
 O Socrates, I used to be told, before I knew you, that you were
always doubting yourself and making others doubt; and now you are
casting your spells over me, and I am simply getting bewitched and
enchanted, and am at my wits' end. And if I may venture to make a jest
upon you, you seem to me both in your appearance and in your power over
others to be very like the flat torpedo fish, who torpifies those who
come near him and touch him, as you have now torpified me, I think. For
my soul and my tongue are really torpid, and I do not know how to answer
you; and though I have been delivered of an infinite variety of speeches
about virtue before now, and to many persons--and very good ones they
were, as I thought--at this moment I cannot even say what virtue is. And
I think that you are very wise in not voyaging and going away from home,
for if you did in other places as you do in Athens, you would be cast
into prison as a magician.
BODY

con128.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con129 = soc.conversations.create()



body_str = <<-BODY
 You are a rogue, Meno, and had all but caught me.
BODY

con129.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con130 = soc.conversations.create()



body_str = <<-BODY
 What do you mean, Socrates?
BODY

con130.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con131 = soc.conversations.create()



body_str = <<-BODY
 I can tell why you made a simile about me.
BODY

con131.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Why?
BODY

con131.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 In order that I might make another simile about you. For I
know that all pretty young gentlemen like to have pretty similes made
about them--as well they may--but I shall not return the compliment. As
to my being a torpedo, if the torpedo is torpid as well as the cause of
torpidity in others, then indeed I am a torpedo, but not otherwise;
for I perplex others, not because I am clear, but because I am utterly
perplexed myself. And now I know not what virtue is, and you seem to be
in the same case, although you did once perhaps know before you touched
me. However, I have no objection to join with you in the enquiry.
BODY

con131.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con132 = soc.conversations.create()



body_str = <<-BODY
 And how will you enquire, Socrates, into that which you do not
know? What will you put forth as the subject of enquiry? And if you find
what you want, how will you ever know that this is the thing which you
did not know?
BODY

con132.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I know, Meno, what you mean; but just see what a tiresome
dispute you are introducing. You argue that a man cannot enquire either
about that which he knows, or about that which he does not know; for if
he knows, he has no need to enquire; and if not, he cannot; for he does
not know the very subject about which he is to enquire (Compare Aristot.
Post. Anal.).
BODY

con132.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Well, Socrates, and is not the argument sound?
BODY

con132.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I think not.
BODY

con132.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con133 = soc.conversations.create()



body_str = <<-BODY
 Why not?
BODY

con133.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con134 = soc.conversations.create()



body_str = <<-BODY
 I will tell you why: I have heard from certain wise men and
women who spoke of things divine that--
BODY

con134.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con135 = soc.conversations.create()



body_str = <<-BODY
 What did they say?
BODY

con135.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con136 = soc.conversations.create()



body_str = <<-BODY
 They spoke of a glorious truth, as I conceive.
BODY

con136.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con137 = soc.conversations.create()



body_str = <<-BODY
 What was it? and who were they?
BODY

con137.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Some of them were priests and priestesses, who had studied how
they might be able to give a reason of their profession: there have been
poets also, who spoke of these things by inspiration, like Pindar, and
many others who were inspired. And they say--mark, now, and see whether
their words are true--they say that the soul of man is immortal, and at
one time has an end, which is termed dying, and at another time is born
again, but is never destroyed. And the moral is, that a man ought to
live always in perfect holiness. 'For in the ninth year Persephone sends
the souls of those from whom she has received the penalty of ancient
crime back again from beneath into the light of the sun above, and these
are they who become noble kings and mighty men and great in wisdom
and are called saintly heroes in after ages.' The soul, then, as being
immortal, and having been born again many times, and having seen all
things that exist, whether in this world or in the world below, has
knowledge of them all; and it is no wonder that she should be able
to call to remembrance all that she ever knew about virtue, and about
everything; for as all nature is akin, and the soul has learned all
things; there is no difficulty in her eliciting or as men say learning,
out of a single recollection all the rest, if a man is strenuous and
does not faint; for all enquiry and all learning is but recollection.
And therefore we ought not to listen to this sophistical argument about
the impossibility of enquiry: for it will make us idle; and is sweet
only to the sluggard; but the other saying will make us active and
inquisitive. In that confiding, I will gladly enquire with you into the
nature of virtue.
BODY

con137.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con138 = soc.conversations.create()



body_str = <<-BODY
 Yes, Socrates; but what do you mean by saying that we do not
learn, and that what we call learning is only a process of recollection?
Can you teach me how this is?
BODY

con138.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con139 = soc.conversations.create()



body_str = <<-BODY
 I told you, Meno, just now that you were a rogue, and now you
ask whether I can teach you, when I am saying that there is no teaching,
but only recollection; and thus you imagine that you will involve me in
a contradiction.
BODY

con139.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con140 = soc.conversations.create()



body_str = <<-BODY
 Indeed, Socrates, I protest that I had no such intention. I only
asked the question from habit; but if you can prove to me that what you
say is true, I wish that you would.
BODY

con140.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con141 = soc.conversations.create()



body_str = <<-BODY
 It will be no easy matter, but I will try to please you to
the utmost of my power. Suppose that you call one of your numerous
attendants, that I may demonstrate on him.
BODY

con141.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Certainly. Come hither, boy.
BODY

con141.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con142 = soc.conversations.create()



body_str = <<-BODY
 He is Greek, and speaks Greek, does he not?
BODY

con142.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con143 = soc.conversations.create()



body_str = <<-BODY
 Yes, indeed; he was born in the house.
BODY

con143.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con144 = soc.conversations.create()



body_str = <<-BODY
 Attend now to the questions which I ask him, and observe
whether he learns of me or only remembers.
BODY

con144.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I will.
BODY

con144.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con145 = soc.conversations.create()



body_str = <<-BODY
 Tell me, boy, do you know that a figure like this is a square?
BODY

con145.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con146 = soc.conversations.create()





 con147 = soc.conversations.create()



body_str = <<-BODY
 And you know that a square figure has these four lines equal?
BODY

con147.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con148 = soc.conversations.create()





 con149 = soc.conversations.create()



body_str = <<-BODY
 And these lines which I have drawn through the middle of the
square are also equal?
BODY

con149.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 A square may be of any size?
BODY

con149.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con150 = soc.conversations.create()





 con151 = soc.conversations.create()



body_str = <<-BODY
 And if one side of the figure be of two feet, and the other
side be of two feet, how much will the whole be? Let me explain: if in
one direction the space was of two feet, and in the other direction of
one foot, the whole would be of two feet taken once?
BODY

con151.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con152 = soc.conversations.create()





 con153 = soc.conversations.create()



body_str = <<-BODY
 But since this side is also of two feet, there are twice two
feet?
BODY

con153.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con154 = soc.conversations.create()



body_str = <<-BODY
 Then the square is of twice two feet?
BODY

con154.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con155 = soc.conversations.create()





body_str = <<-BODY
 And how many are twice two feet? count and tell me.
BODY

con155.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con156 = soc.conversations.create()





 con157 = soc.conversations.create()



body_str = <<-BODY
 And might there not be another square twice as large as this,
and having like this the lines equal?
BODY

con157.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con158 = soc.conversations.create()





 con159 = soc.conversations.create()



body_str = <<-BODY
 And of how many feet will that be?
BODY

con159.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 And now try and tell me the length of the line which forms the
side of that double square: this is two feet--what will that be?
BODY

con159.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 Do you observe, Meno, that I am not teaching the boy anything,
but only asking him questions; and now he fancies that he knows how long
a line is necessary in order to produce a figure of eight square feet;
does he not?
BODY

con159.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con160 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con160.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And does he really know?
BODY

con160.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con161 = soc.conversations.create()



body_str = <<-BODY
 Certainly not.
BODY

con161.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con162 = soc.conversations.create()



body_str = <<-BODY
 He only guesses that because the square is double, the line is
double.
BODY

con162.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con162.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con163 = soc.conversations.create()



body_str = <<-BODY
 Observe him while he recalls the steps in regular order. (To
the Boy:) Tell me, boy, do you assert that a double space comes from
a double line? Remember that I am not speaking of an oblong, but of a
figure equal every way, and twice the size of this--that is to say
of eight feet; and I want to know whether you still say that a double
square comes from double line?
BODY

con163.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con164 = soc.conversations.create()





body_str = <<-BODY
 But does not this line become doubled if we add another such
line here?
BODY

con164.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 And four such lines will make a space containing eight feet?
BODY

con164.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con165 = soc.conversations.create()





body_str = <<-BODY
 Let us describe such a figure: Would you not say that this is
the figure of eight feet?
BODY

con165.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con166 = soc.conversations.create()





body_str = <<-BODY
 And are there not these four divisions in the figure, each of
which is equal to the figure of four feet?
BODY

con166.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con167 = soc.conversations.create()





 con168 = soc.conversations.create()



body_str = <<-BODY
 And is not that four times four?
BODY

con168.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con169 = soc.conversations.create()





 con170 = soc.conversations.create()



body_str = <<-BODY
 And four times is not double?
BODY

con170.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con171 = soc.conversations.create()





 con172 = soc.conversations.create()



body_str = <<-BODY
 But how much?
BODY

con172.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con173 = soc.conversations.create()





 con174 = soc.conversations.create()



body_str = <<-BODY
 Therefore the double line, boy, has given a space, not twice,
but four times as much.
BODY

con174.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con175 = soc.conversations.create()



body_str = <<-BODY
 Four times four are sixteen--are they not?
BODY

con175.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con176 = soc.conversations.create()





 con177 = soc.conversations.create()



body_str = <<-BODY
 What line would give you a space of eight feet, as this gives
one of sixteen feet;--do you see?
BODY

con177.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con178 = soc.conversations.create()





body_str = <<-BODY
 And the space of four feet is made from this half line?
BODY

con178.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con179 = soc.conversations.create()





body_str = <<-BODY
 Good; and is not a space of eight feet twice the size of this,
and half the size of the other?
BODY

con179.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con180 = soc.conversations.create()



body_str = <<-BODY
 Such a space, then, will be made out of a line greater than
this one, and less than that one?
BODY

con180.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con181 = soc.conversations.create()



body_str = <<-BODY
 Very good; I like to hear you say what you think. And now tell
me, is not this a line of two feet and that of four?
BODY

con181.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con182 = soc.conversations.create()



body_str = <<-BODY
 Then the line which forms the side of eight feet ought to be
more than this line of two feet, and less than the other of four feet?
BODY

con182.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con183 = soc.conversations.create()





 con184 = soc.conversations.create()



body_str = <<-BODY
 Try and see if you can tell me how much it will be.
BODY

con184.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con185 = soc.conversations.create()





 con186 = soc.conversations.create()



body_str = <<-BODY
 Then if we add a half to this line of two, that will be the
line of three. Here are two and there is one; and on the other side,
here are two also and there is one: and that makes the figure of which
you speak?
BODY

con186.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con187 = soc.conversations.create()





body_str = <<-BODY
 But if there are three feet this way and three feet that way,
the whole space will be three times three feet?
BODY

con187.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con188 = soc.conversations.create()





 con189 = soc.conversations.create()



body_str = <<-BODY
 And how much are three times three feet?
BODY

con189.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con190 = soc.conversations.create()





 con191 = soc.conversations.create()



body_str = <<-BODY
 And how much is the double of four?
BODY

con191.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con192 = soc.conversations.create()



body_str = <<-BODY
 Then the figure of eight is not made out of a line of three?
BODY

con192.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con193 = soc.conversations.create()





 con194 = soc.conversations.create()



body_str = <<-BODY
 But from what line?--tell me exactly; and if you would rather
not reckon, try and show me the line.
BODY

con194.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con195 = soc.conversations.create()



body_str = <<-BODY
 Do you see, Meno, what advances he has made in his power of
recollection? He did not know at first, and he does not know now, what
is the side of a figure of eight feet: but then he thought that he knew,
and answered confidently as if he knew, and had no difficulty; now he
has a difficulty, and neither knows nor fancies that he knows.
BODY

con195.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con195.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con196 = soc.conversations.create()



body_str = <<-BODY
 Is he not better off in knowing his ignorance?
BODY

con196.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con197 = soc.conversations.create()



body_str = <<-BODY
 I think that he is.
BODY

con197.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con198 = soc.conversations.create()



body_str = <<-BODY
 If we have made him doubt, and given him the 'torpedo's
shock,' have we done him any harm?
BODY

con198.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con199 = soc.conversations.create()



body_str = <<-BODY
 I think not.
BODY

con199.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 We have certainly, as would seem, assisted him in some degree
to the discovery of the truth; and now he will wish to remedy his
ignorance, but then he would have been ready to tell all the world again
and again that the double space should have a double side.
BODY

con199.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con200 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con200.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con201 = soc.conversations.create()



body_str = <<-BODY
 But do you suppose that he would ever have enquired into or
learned what he fancied that he knew, though he was really ignorant of
it, until he had fallen into perplexity under the idea that he did not
know, and had desired to know?
BODY

con201.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con202 = soc.conversations.create()



body_str = <<-BODY
 I think not, Socrates.
BODY

con202.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then he was the better for the torpedo's touch?
BODY

con202.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con203 = soc.conversations.create()



body_str = <<-BODY
 I think so.
BODY

con203.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con204 = soc.conversations.create()



body_str = <<-BODY
 Mark now the farther development. I shall only ask him, and
not teach him, and he shall share the enquiry with me: and do you watch
and see if you find me telling or explaining anything to him, instead of
eliciting his opinion. Tell me, boy, is not this a square of four feet
which I have drawn?
BODY

con204.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con205 = soc.conversations.create()





 con206 = soc.conversations.create()



body_str = <<-BODY
 And now I add another square equal to the former one?
BODY

con206.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con207 = soc.conversations.create()



body_str = <<-BODY
 And a third, which is equal to either of them?
BODY

con207.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con208 = soc.conversations.create()





body_str = <<-BODY
 Suppose that we fill up the vacant corner?
BODY

con208.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con209 = soc.conversations.create()





 con210 = soc.conversations.create()



body_str = <<-BODY
 Here, then, there are four equal spaces?
BODY

con210.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con211 = soc.conversations.create()





 con212 = soc.conversations.create()



body_str = <<-BODY
 And how many times larger is this space than this other?
BODY

con212.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 But it ought to have been twice only, as you will remember.
BODY

con212.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con213 = soc.conversations.create()





 con214 = soc.conversations.create()



body_str = <<-BODY
 And does not this line, reaching from corner to corner, bisect
each of these spaces?
BODY

con214.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con215 = soc.conversations.create()





body_str = <<-BODY
 And are there not here four equal lines which contain this
space?
BODY

con215.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con216 = soc.conversations.create()



body_str = <<-BODY
 Look and see how much this space is.
BODY

con216.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con217 = soc.conversations.create()





 con218 = soc.conversations.create()



body_str = <<-BODY
 Has not each interior line cut off half of the four spaces?
BODY

con218.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con219 = soc.conversations.create()





 con220 = soc.conversations.create()



body_str = <<-BODY
 And how many spaces are there in this section?
BODY

con220.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con221 = soc.conversations.create()



body_str = <<-BODY
 And how many in this?
BODY

con221.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con222 = soc.conversations.create()





body_str = <<-BODY
 And four is how many times two?
BODY

con222.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con223 = soc.conversations.create()



body_str = <<-BODY
 And this space is of how many feet?
BODY

con223.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con224 = soc.conversations.create()





 con225 = soc.conversations.create()



body_str = <<-BODY
 And from what line do you get this figure?
BODY

con225.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con226 = soc.conversations.create()





 con227 = soc.conversations.create()



body_str = <<-BODY
 That is, from the line which extends from corner to corner of
the figure of four feet?
BODY

con227.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con228 = soc.conversations.create()





body_str = <<-BODY
 And that is the line which the learned call the diagonal.
And if this is the proper name, then you, Meno's slave, are prepared to
affirm that the double space is the square of the diagonal?
BODY

con228.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con229 = soc.conversations.create()





 con230 = soc.conversations.create()



body_str = <<-BODY
 What do you say of him, Meno? Were not all these answers given
out of his own head?
BODY

con230.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, they were all his own.
BODY

con230.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con231 = soc.conversations.create()



body_str = <<-BODY
 And yet, as we were just now saying, he did not know?
BODY

con231.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con232 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con232.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con233 = soc.conversations.create()



body_str = <<-BODY
 But still he had in him those notions of his--had he not?
BODY

con233.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con234 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con234.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con235 = soc.conversations.create()



body_str = <<-BODY
 Then he who does not know may still have true notions of that
which he does not know?
BODY

con235.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 He has.
BODY

con235.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And at present these notions have just been stirred up in him,
as in a dream; but if he were frequently asked the same questions, in
different forms, he would know as well as any one at last?
BODY

con235.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con236 = soc.conversations.create()



body_str = <<-BODY
 I dare say.
BODY

con236.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Without any one teaching him he will recover his knowledge for
himself, if he is only asked questions?
BODY

con236.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con237 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con237.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con238 = soc.conversations.create()



body_str = <<-BODY
 And this spontaneous recovery of knowledge in him is
recollection?
BODY

con238.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con239 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con239.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con240 = soc.conversations.create()



body_str = <<-BODY
 And this knowledge which he now has must he not either have
acquired or always possessed?
BODY

con240.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con241 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con241.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con242 = soc.conversations.create()



body_str = <<-BODY
 But if he always possessed this knowledge he would always have
known; or if he has acquired the knowledge he could not have acquired it
in this life, unless he has been taught geometry; for he may be made to
do the same with all geometry and every other branch of knowledge. Now,
has any one ever taught him all this? You must know about him, if, as
you say, he was born and bred in your house.
BODY

con242.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And I am certain that no one ever did teach him.
BODY

con242.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And yet he has the knowledge?
BODY

con242.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con243 = soc.conversations.create()



body_str = <<-BODY
 The fact, Socrates, is undeniable.
BODY

con243.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 But if he did not acquire the knowledge in this life, then he
must have had and learned it at some other time?
BODY

con243.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con244 = soc.conversations.create()



body_str = <<-BODY
 Clearly he must.
BODY

con244.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con245 = soc.conversations.create()



body_str = <<-BODY
 Which must have been the time when he was not a man?
BODY

con245.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con246 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con246.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con247 = soc.conversations.create()



body_str = <<-BODY
 And if there have been always true thoughts in him, both at
the time when he was and was not a man, which only need to be awakened
into knowledge by putting questions to him, his soul must have always
possessed this knowledge, for he always either was or was not a man?
BODY

con247.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Obviously.
BODY

con247.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con248 = soc.conversations.create()



body_str = <<-BODY
 And if the truth of all things always existed in the soul,
then the soul is immortal. Wherefore be of good cheer, and try to
recollect what you do not know, or rather what you do not remember.
BODY

con248.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con249 = soc.conversations.create()



body_str = <<-BODY
 I feel, somehow, that I like what you are saying.
BODY

con249.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con250 = soc.conversations.create()



body_str = <<-BODY
 And I, Meno, like what I am saying. Some things I have said
of which I am not altogether confident. But that we shall be better and
braver and less helpless if we think that we ought to enquire, than
we should have been if we indulged in the idle fancy that there was no
knowing and no use in seeking to know what we do not know;--that is a
theme upon which I am ready to fight, in word and deed, to the utmost of
my power.
BODY

con250.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 There again, Socrates, your words seem to me excellent.
BODY

con250.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then, as we are agreed that a man should enquire about that
which he does not know, shall you and I make an effort to enquire
together into the nature of virtue?
BODY

con250.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 By all means, Socrates. And yet I would much rather return to my
original question, Whether in seeking to acquire virtue we should regard
it as a thing to be taught, or as a gift of nature, or as coming to men
in some other way?
BODY

con250.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Had I the command of you as well as of myself, Meno, I would
not have enquired whether virtue is given by instruction or not,
until we had first ascertained 'what it is.' But as you think only
of controlling me who am your slave, and never of controlling
yourself,--such being your notion of freedom, I must yield to you,
for you are irresistible. And therefore I have now to enquire into the
qualities of a thing of which I do not as yet know the nature. At any
rate, will you condescend a little, and allow the question 'Whether
virtue is given by instruction, or in any other way,' to be argued upon
hypothesis? As the geometrician, when he is asked whether a certain
triangle is capable being inscribed in a certain circle (Or, whether a
certain area is capable of being inscribed as a triangle in a certain
circle.), will reply: 'I cannot tell you as yet; but I will offer a
hypothesis which may assist us in forming a conclusion: If the figure be
such that when you have produced a given side of it (Or, when you apply
it to the given line, i.e. the diameter of the circle (autou).), the
given area of the triangle falls short by an area corresponding to
the part produced (Or, similar to the area so applied.), then one
consequence follows, and if this is impossible then some other; and
therefore I wish to assume a hypothesis before I tell you whether
this triangle is capable of being inscribed in the circle':--that is
a geometrical hypothesis. And we too, as we know not the nature and
qualities of virtue, must ask, whether virtue is or is not taught, under
a hypothesis: as thus, if virtue is of such a class of mental goods,
will it be taught or not? Let the first hypothesis be that virtue is or
is not knowledge,--in that case will it be taught or not? or, as we were
just now saying, 'remembered'? For there is no use in disputing about
the name. But is virtue taught or not? or rather, does not every one see
that knowledge alone is taught?
BODY

con250.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I agree.
BODY

con250.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con251 = soc.conversations.create()



body_str = <<-BODY
 Then if virtue is knowledge, virtue will be taught?
BODY

con251.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con252 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con252.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then now we have made a quick end of this question: if virtue
is of such a nature, it will be taught; and if not, not?
BODY

con252.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Certainly.
BODY

con252.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con253 = soc.conversations.create()



body_str = <<-BODY
 The next question is, whether virtue is knowledge or of
another species?
BODY

con253.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con254 = soc.conversations.create()



body_str = <<-BODY
 Yes, that appears to be the question which comes next in order.
BODY

con254.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con255 = soc.conversations.create()



body_str = <<-BODY
 Do we not say that virtue is a good?--This is a hypothesis
which is not set aside.
BODY

con255.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con256 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con256.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con257 = soc.conversations.create()



body_str = <<-BODY
 Now, if there be any sort of good which is distinct from
knowledge, virtue may be that good; but if knowledge embraces all good,
then we shall be right in thinking that virtue is knowledge?
BODY

con257.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con258 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con258.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con259 = soc.conversations.create()



body_str = <<-BODY
 And virtue makes us good?
BODY

con259.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con260 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con260.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con261 = soc.conversations.create()



body_str = <<-BODY
 And if we are good, then we are profitable; for all good
things are profitable?
BODY

con261.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con262 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con262.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con263 = soc.conversations.create()



body_str = <<-BODY
 Then virtue is profitable?
BODY

con263.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con264 = soc.conversations.create()



body_str = <<-BODY
 That is the only inference.
BODY

con264.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con265 = soc.conversations.create()



body_str = <<-BODY
 Then now let us see what are the things which severally profit
us. Health and strength, and beauty and wealth--these, and the like of
these, we call profitable?
BODY

con265.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con265.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And yet these things may also sometimes do us harm: would you
not think so?
BODY

con265.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con266 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con266.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And what is the guiding principle which makes them profitable
or the reverse? Are they not profitable when they are rightly used, and
hurtful when they are not rightly used?
BODY

con266.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con267 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con267.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Next, let us consider the goods of the soul: they are
temperance, justice, courage, quickness of apprehension, memory,
magnanimity, and the like?
BODY

con267.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con268 = soc.conversations.create()



body_str = <<-BODY
 Surely.
BODY

con268.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And such of these as are not knowledge, but of another sort,
are sometimes profitable and sometimes hurtful; as, for example, courage
wanting prudence, which is only a sort of confidence? When a man has no
sense he is harmed by courage, but when he has sense he is profited?
BODY

con268.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con268.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con269 = soc.conversations.create()



body_str = <<-BODY
 And the same may be said of temperance and quickness of
apprehension; whatever things are learned or done with sense are
profitable, but when done without sense they are hurtful?
BODY

con269.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con270 = soc.conversations.create()



body_str = <<-BODY
 Very true.
BODY

con270.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And in general, all that the soul attempts or endures, when
under the guidance of wisdom, ends in happiness; but when she is under
the guidance of folly, in the opposite?
BODY

con270.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con271 = soc.conversations.create()



body_str = <<-BODY
 That appears to be true.
BODY

con271.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 If then virtue is a quality of the soul, and is admitted to be
profitable, it must be wisdom or prudence, since none of the things of
the soul are either profitable or hurtful in themselves, but they are
all made profitable or hurtful by the addition of wisdom or of folly;
and therefore if virtue is profitable, virtue must be a sort of wisdom
or prudence?
BODY

con271.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con272 = soc.conversations.create()



body_str = <<-BODY
 I quite agree.
BODY

con272.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con273 = soc.conversations.create()



body_str = <<-BODY
 And the other goods, such as wealth and the like, of which we
were just now saying that they are sometimes good and sometimes evil,
do not they also become profitable or hurtful, accordingly as the soul
guides and uses them rightly or wrongly; just as the things of the soul
herself are benefited when under the guidance of wisdom and harmed by
folly?
BODY

con273.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con274 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con274.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con275 = soc.conversations.create()



body_str = <<-BODY
 And the wise soul guides them rightly, and the foolish soul
wrongly.
BODY

con275.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes.
BODY

con275.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con276 = soc.conversations.create()



body_str = <<-BODY
 And is not this universally true of human nature? All other
things hang upon the soul, and the things of the soul herself hang upon
wisdom, if they are to be good; and so wisdom is inferred to be that
which profits--and virtue, as we say, is profitable?
BODY

con276.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con277 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con277.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con278 = soc.conversations.create()



body_str = <<-BODY
 And thus we arrive at the conclusion that virtue is either
wholly or partly wisdom?
BODY

con278.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I think that what you are saying, Socrates, is very true.
BODY

con278.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con279 = soc.conversations.create()



body_str = <<-BODY
 But if this is true, then the good are not by nature good?
BODY

con279.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I think not.
BODY

con279.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con280 = soc.conversations.create()



body_str = <<-BODY
 If they had been, there would assuredly have been discerners
of characters among us who would have known our future great men; and on
their showing we should have adopted them, and when we had got them, we
should have kept them in the citadel out of the way of harm, and set a
stamp upon them far rather than upon a piece of gold, in order that no
one might tamper with them; and when they grew up they would have been
useful to the state?
BODY

con280.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con281 = soc.conversations.create()



body_str = <<-BODY
 Yes, Socrates, that would have been the right way.
BODY

con281.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 But if the good are not by nature good, are they made good by
instruction?
BODY

con281.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con282 = soc.conversations.create()



body_str = <<-BODY
 There appears to be no other alternative, Socrates. On the
supposition that virtue is knowledge, there can be no doubt that virtue
is taught.
BODY

con282.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, indeed; but what if the supposition is erroneous?
BODY

con282.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I certainly thought just now that we were right.
BODY

con282.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con283 = soc.conversations.create()



body_str = <<-BODY
 Yes, Meno; but a principle which has any soundness should
stand firm not only just now, but always.
BODY

con283.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con284 = soc.conversations.create()



body_str = <<-BODY
 Well; and why are you so slow of heart to believe that knowledge
is virtue?
BODY

con284.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I will try and tell you why, Meno. I do not retract the
assertion that if virtue is knowledge it may be taught; but I fear that
I have some reason in doubting whether virtue is knowledge: for consider
now and say whether virtue, and not only virtue but anything that is
taught, must not have teachers and disciples?
BODY

con284.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Surely.
BODY

con284.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con285 = soc.conversations.create()



body_str = <<-BODY
 And conversely, may not the art of which neither teachers nor
disciples exist be assumed to be incapable of being taught?
BODY

con285.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con286 = soc.conversations.create()



body_str = <<-BODY
 True; but do you think that there are no teachers of virtue?
BODY

con286.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I have certainly often enquired whether there were any, and
taken great pains to find them, and have never succeeded; and many have
assisted me in the search, and they were the persons whom I thought the
most likely to know. Here at the moment when he is wanted we fortunately
have sitting by us Anytus, the very person of whom we should make
enquiry; to him then let us repair. In the first place, he is the son
of a wealthy and wise father, Anthemion, who acquired his wealth, not
by accident or gift, like Ismenias the Theban (who has recently made
himself as rich as Polycrates), but by his own skill and industry, and
who is a well-conditioned, modest man, not insolent, or overbearing, or
annoying; moreover, this son of his has received a good education, as
the Athenian people certainly appear to think, for they choose him to
fill the highest offices. And these are the sort of men from whom you
are likely to learn whether there are any teachers of virtue, and who
they are. Please, Anytus, to help me and your friend Meno in answering
our question, Who are the teachers? Consider the matter thus: If we
wanted Meno to be a good physician, to whom should we send him? Should
we not send him to the physicians?
BODY

con286.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con287 = soc.conversations.create()





 con288 = soc.conversations.create()



body_str = <<-BODY
 Or if we wanted him to be a good cobbler, should we not send
him to the cobblers?
BODY

con288.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con289 = soc.conversations.create()





 con290 = soc.conversations.create()



body_str = <<-BODY
 And so forth?
BODY

con290.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 Let me trouble you with one more question. When we say that we
should be right in sending him to the physicians if we wanted him to be
a physician, do we mean that we should be right in sending him to those
who profess the art, rather than to those who do not, and to those who
demand payment for teaching the art, and profess to teach it to any one
who will come and learn? And if these were our reasons, should we not be
right in sending him?
BODY

con290.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con291 = soc.conversations.create()



body_str = <<-BODY
 And might not the same be said of flute-playing, and of the
other arts? Would a man who wanted to make another a flute-player refuse
to send him to those who profess to teach the art for money, and be
plaguing other persons to give him instruction, who are not professed
teachers and who never had a single disciple in that branch of knowledge
which he wishes him to acquire--would not such conduct be the height of
folly?
BODY

con291.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con292 = soc.conversations.create()



body_str = <<-BODY
 Very good. And now you are in a position to advise with me
about my friend Meno. He has been telling me, Anytus, that he desires
to attain that kind of wisdom and virtue by which men order the state or
the house, and honour their parents, and know when to receive and when
to send away citizens and strangers, as a good man should. Now, to
whom should he go in order that he may learn this virtue? Does not the
previous argument imply clearly that we should send him to those who
profess and avouch that they are the common teachers of all Hellas, and
are ready to impart instruction to any one who likes, at a fixed price?
BODY

con292.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con293 = soc.conversations.create()





 con294 = soc.conversations.create()



body_str = <<-BODY
 You surely know, do you not, Anytus, that these are the people
whom mankind call Sophists?
BODY

con294.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con295 = soc.conversations.create()





 con296 = soc.conversations.create()



body_str = <<-BODY
 What, Anytus? Of all the people who profess that they know how
to do men good, do you mean to say that these are the only ones who not
only do them no good, but positively corrupt those who are entrusted to
them, and in return for this disservice have the face to demand money?
Indeed, I cannot believe you; for I know of a single man, Protagoras,
who made more out of his craft than the illustrious Pheidias, who
created such noble works, or any ten other statuaries. How could that
be? A mender of old shoes, or patcher up of clothes, who made the shoes
or clothes worse than he received them, could not have remained thirty
days undetected, and would very soon have starved; whereas during more
than forty years, Protagoras was corrupting all Hellas, and sending his
disciples from him worse than he received them, and he was never found
out. For, if I am not mistaken, he was about seventy years old at his
death, forty of which were spent in the practice of his profession;
and during all that time he had a good reputation, which to this day he
retains: and not only Protagoras, but many others are well spoken of;
some who lived before him, and others who are still living. Now, when
you say that they deceived and corrupted the youth, are they to be
supposed to have corrupted them consciously or unconsciously? Can those
who were deemed by many to be the wisest men of Hellas have been out of
their minds?
BODY

con296.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con297 = soc.conversations.create()





body_str = <<-BODY
 Has any of the Sophists wronged you, Anytus? What makes you so
angry with them?
BODY

con297.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con298 = soc.conversations.create()





 con299 = soc.conversations.create()



body_str = <<-BODY
 Then you are entirely unacquainted with them?
BODY

con299.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con300 = soc.conversations.create()





body_str = <<-BODY
 Then, my dear friend, how can you know whether a thing is good
or bad of which you are wholly ignorant?
BODY

con300.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con301 = soc.conversations.create()





 con302 = soc.conversations.create()



body_str = <<-BODY
 You must be a diviner, Anytus, for I really cannot make out,
judging from your own words, how, if you are not acquainted with them,
you know about them. But I am not enquiring of you who are the teachers
who will corrupt Meno (let them be, if you please, the Sophists); I only
ask you to tell him who there is in this great city who will teach him
how to become eminent in the virtues which I was just now describing. He
is the friend of your family, and you will oblige him.
BODY

con302.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con303 = soc.conversations.create()





 con304 = soc.conversations.create()



body_str = <<-BODY
 I have told him whom I supposed to be the teachers of these
things; but I learn from you that I am utterly at fault, and I dare say
that you are right. And now I wish that you, on your part, would tell me
to whom among the Athenians he should go. Whom would you name?
BODY

con304.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 And did those gentlemen grow of themselves; and without having
been taught by any one, were they nevertheless able to teach others that
which they had never learned themselves?
BODY

con304.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con305 = soc.conversations.create()



body_str = <<-BODY
 Yes, certainly, Anytus; and many good statesmen also there
always have been and there are still, in the city of Athens. But
the question is whether they were also good teachers of their own
virtue;--not whether there are, or have been, good men in this part of
the world, but whether virtue can be taught, is the question which we
have been discussing. Now, do we mean to say that the good men of our
own and of other times knew how to impart to others that virtue
which they had themselves; or is virtue a thing incapable of being
communicated or imparted by one man to another? That is the question
which I and Meno have been arguing. Look at the matter in your own way:
Would you not admit that Themistocles was a good man?
BODY

con305.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con306 = soc.conversations.create()





 con307 = soc.conversations.create()



body_str = <<-BODY
 And must not he then have been a good teacher, if any man ever
was a good teacher, of his own virtue?
BODY

con307.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con308 = soc.conversations.create()





 con309 = soc.conversations.create()



body_str = <<-BODY
 But would he not have wanted? He would, at any rate, have
desired to make his own son a good man and a gentleman; he could not
have been jealous of him, or have intentionally abstained from
imparting to him his own virtue. Did you never hear that he made his son
Cleophantus a famous horseman; and had him taught to stand upright on
horseback and hurl a javelin, and to do many other marvellous things;
and in anything which could be learned from a master he was well
trained? Have you not heard from our elders of him?
BODY

con309.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




body_str = <<-BODY
 Then no one could say that his son showed any want of
capacity?
BODY

con309.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con310 = soc.conversations.create()



body_str = <<-BODY
 But did any one, old or young, ever say in your hearing that
Cleophantus, son of Themistocles, was a wise or good man, as his father
was?
BODY

con310.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con311 = soc.conversations.create()





 con312 = soc.conversations.create()



body_str = <<-BODY
 And if virtue could have been taught, would his father
Themistocles have sought to train him in these minor accomplishments,
and allowed him who, as you must remember, was his own son, to be
no better than his neighbours in those qualities in which he himself
excelled?
BODY

con312.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con313 = soc.conversations.create()



body_str = <<-BODY
 Here was a teacher of virtue whom you admit to be among
the best men of the past. Let us take another,--Aristides, the son of
Lysimachus: would you not acknowledge that he was a good man?
BODY

con313.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con314 = soc.conversations.create()



body_str = <<-BODY
 And did not he train his son Lysimachus better than any other
Athenian in all that could be done for him by the help of masters? But
what has been the result? Is he a bit better than any other mortal?
He is an acquaintance of yours, and you see what he is like. There is
Pericles, again, magnificent in his wisdom; and he, as you are aware,
had two sons, Paralus and Xanthippus.
BODY

con314.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con315 = soc.conversations.create()





body_str = <<-BODY
 And you know, also, that he taught them to be unrivalled
horsemen, and had them trained in music and gymnastics and all sorts of
arts--in these respects they were on a level with the best--and had
he no wish to make good men of them? Nay, he must have wished it. But
virtue, as I suspect, could not be taught. And that you may not suppose
the incompetent teachers to be only the meaner sort of Athenians and
few in number, remember again that Thucydides had two sons, Melesias and
Stephanus, whom, besides giving them a good education in other things,
he trained in wrestling, and they were the best wrestlers in Athens: one
of them he committed to the care of Xanthias, and the other of Eudorus,
who had the reputation of being the most celebrated wrestlers of that
day. Do you remember them?
BODY

con315.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con316 = soc.conversations.create()





body_str = <<-BODY
 Now, can there be a doubt that Thucydides, whose children were
taught things for which he had to spend money, would have taught them
to be good men, which would have cost him nothing, if virtue could have
been taught? Will you reply that he was a mean man, and had not many
friends among the Athenians and allies? Nay, but he was of a great
family, and a man of influence at Athens and in all Hellas, and, if
virtue could have been taught, he would have found out some Athenian
or foreigner who would have made good men of his sons, if he could not
himself spare the time from cares of state. Once more, I suspect, friend
Anytus, that virtue is not a thing which can be taught?
BODY

con316.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con317 = soc.conversations.create()



body_str = <<-BODY
 O Meno, think that Anytus is in a rage. And he may well be
in a rage, for he thinks, in the first place, that I am defaming these
gentlemen; and in the second place, he is of opinion that he is one
of them himself. But some day he will know what is the meaning of
defamation, and if he ever does, he will forgive me. Meanwhile I will
return to you, Meno; for I suppose that there are gentlemen in your
region too?
BODY

con317.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con318 = soc.conversations.create()



body_str = <<-BODY
 Certainly there are.
BODY

con318.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con319 = soc.conversations.create()



body_str = <<-BODY
 And are they willing to teach the young? and do they profess
to be teachers? and do they agree that virtue is taught?
BODY

con319.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con320 = soc.conversations.create()



body_str = <<-BODY
 No indeed, Socrates, they are anything but agreed; you may hear
them saying at one time that virtue can be taught, and then again the
reverse.
BODY

con320.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con321 = soc.conversations.create()



body_str = <<-BODY
 Can we call those teachers who do not acknowledge the
possibility of their own vocation?
BODY

con321.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con322 = soc.conversations.create()



body_str = <<-BODY
 I think not, Socrates.
BODY

con322.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And what do you think of these Sophists, who are the only
professors? Do they seem to you to be teachers of virtue?
BODY

con322.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con323 = soc.conversations.create()



body_str = <<-BODY
 I often wonder, Socrates, that Gorgias is never heard promising to
teach virtue: and when he hears others promising he only laughs at them;
but he thinks that men should be taught to speak.
BODY

con323.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con324 = soc.conversations.create()



body_str = <<-BODY
 Then do you not think that the Sophists are teachers?
BODY

con324.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con325 = soc.conversations.create()



body_str = <<-BODY
 I cannot tell you, Socrates; like the rest of the world, I am in
doubt, and sometimes I think that they are teachers and sometimes not.
BODY

con325.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con326 = soc.conversations.create()



body_str = <<-BODY
 And are you aware that not you only and other politicians have
doubts whether virtue can be taught or not, but that Theognis the poet
says the very same thing?
BODY

con326.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con327 = soc.conversations.create()



body_str = <<-BODY
 Where does he say so?
BODY

con327.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con328 = soc.conversations.create()



body_str = <<-BODY
 In these elegiac verses (Theog.):
BODY

con328.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con329 = soc.conversations.create()





 con330 = soc.conversations.create()





body_str = <<-BODY
 Clearly.
BODY

con330.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con331 = soc.conversations.create()



body_str = <<-BODY
 But in some other verses he shifts about and says (Theog.):
BODY

con331.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con332 = soc.conversations.create()











 con333 = soc.conversations.create()



body_str = <<-BODY
 Clearly.
BODY

con333.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And is there anything else of which the professors are
affirmed not only not to be teachers of others, but to be ignorant
themselves, and bad at the knowledge of that which they are professing
to teach? or is there anything about which even the acknowledged
'gentlemen' are sometimes saying that 'this thing can be taught,' and
sometimes the opposite? Can you say that they are teachers in any true
sense whose ideas are in such confusion?
BODY

con333.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I should say, certainly not.
BODY

con333.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 But if neither the Sophists nor the gentlemen are teachers,
clearly there can be no other teachers?
BODY

con333.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con334 = soc.conversations.create()



body_str = <<-BODY
 No.
BODY

con334.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con335 = soc.conversations.create()



body_str = <<-BODY
 And if there are no teachers, neither are there disciples?
BODY

con335.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con336 = soc.conversations.create()



body_str = <<-BODY
 Agreed.
BODY

con336.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con337 = soc.conversations.create()



body_str = <<-BODY
 And we have admitted that a thing cannot be taught of which
there are neither teachers nor disciples?
BODY

con337.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con338 = soc.conversations.create()



body_str = <<-BODY
 We have.
BODY

con338.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con339 = soc.conversations.create()



body_str = <<-BODY
 And there are no teachers of virtue to be found anywhere?
BODY

con339.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 There are not.
BODY

con339.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And if there are no teachers, neither are there scholars?
BODY

con339.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con340 = soc.conversations.create()



body_str = <<-BODY
 That, I think, is true.
BODY

con340.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con341 = soc.conversations.create()



body_str = <<-BODY
 Then virtue cannot be taught?
BODY

con341.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con342 = soc.conversations.create()



body_str = <<-BODY
 Not if we are right in our view. But I cannot believe, Socrates,
that there are no good men: And if there are, how did they come into
existence?
BODY

con342.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 I am afraid, Meno, that you and I are not good for much, and
that Gorgias has been as poor an educator of you as Prodicus has been of
me. Certainly we shall have to look to ourselves, and try to find
some one who will help in some way or other to improve us. This I say,
because I observe that in the previous discussion none of us remarked
that right and good action is possible to man under other guidance than
that of knowledge (episteme);--and indeed if this be denied, there is no
seeing how there can be any good men at all.
BODY

con342.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 How do you mean, Socrates?
BODY

con342.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con343 = soc.conversations.create()



body_str = <<-BODY
 I mean that good men are necessarily useful or profitable.
Were we not right in admitting this? It must be so.
BODY

con343.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con344 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con344.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con345 = soc.conversations.create()



body_str = <<-BODY
 And in supposing that they will be useful only if they are
true guides to us of action--there we were also right?
BODY

con345.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes.
BODY

con345.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con346 = soc.conversations.create()



body_str = <<-BODY
 But when we said that a man cannot be a good guide unless he
have knowledge (phrhonesis), this we were wrong.
BODY

con346.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con347 = soc.conversations.create()



body_str = <<-BODY
 What do you mean by the word 'right'?
BODY

con347.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con348 = soc.conversations.create()



body_str = <<-BODY
 I will explain. If a man knew the way to Larisa, or anywhere
else, and went to the place and led others thither, would he not be a
right and good guide?
BODY

con348.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con349 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con349.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con350 = soc.conversations.create()



body_str = <<-BODY
 And a person who had a right opinion about the way, but had
never been and did not know, might be a good guide also, might he not?
BODY

con350.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con351 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con351.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And while he has true opinion about that which the other
knows, he will be just as good a guide if he thinks the truth, as he who
knows the truth?
BODY

con351.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con352 = soc.conversations.create()



body_str = <<-BODY
 Exactly.
BODY

con352.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con353 = soc.conversations.create()



body_str = <<-BODY
 Then true opinion is as good a guide to correct action as
knowledge; and that was the point which we omitted in our speculation
about the nature of virtue, when we said that knowledge only is the
guide of right action; whereas there is also right opinion.
BODY

con353.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con353.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con354 = soc.conversations.create()



body_str = <<-BODY
 Then right opinion is not less useful than knowledge?
BODY

con354.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con355 = soc.conversations.create()



body_str = <<-BODY
 The difference, Socrates, is only that he who has knowledge will
always be right; but he who has right opinion will sometimes be right,
and sometimes not.
BODY

con355.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con356 = soc.conversations.create()



body_str = <<-BODY
 What do you mean? Can he be wrong who has right opinion, so
long as he has right opinion?
BODY

con356.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con357 = soc.conversations.create()



body_str = <<-BODY
 I admit the cogency of your argument, and therefore, Socrates, I
wonder that knowledge should be preferred to right opinion--or why they
should ever differ.
BODY

con357.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And shall I explain this wonder to you?
BODY

con357.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Do tell me.
BODY

con357.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con358 = soc.conversations.create()



body_str = <<-BODY
 You would not wonder if you had ever observed the images of
Daedalus (Compare Euthyphro); but perhaps you have not got them in your
country?
BODY

con358.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 What have they to do with the question?
BODY

con358.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con359 = soc.conversations.create()



body_str = <<-BODY
 Because they require to be fastened in order to keep them, and
if they are not fastened they will play truant and run away.
BODY

con359.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Well, what of that?
BODY

con359.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con360 = soc.conversations.create()



body_str = <<-BODY
 I mean to say that they are not very valuable possessions if
they are at liberty, for they will walk off like runaway slaves; but
when fastened, they are of great value, for they are really beautiful
works of art. Now this is an illustration of the nature of true
opinions: while they abide with us they are beautiful and fruitful,
but they run away out of the human soul, and do not remain long, and
therefore they are not of much value until they are fastened by the tie
of the cause; and this fastening of them, friend Meno, is recollection,
as you and I have agreed to call it. But when they are bound, in the
first place, they have the nature of knowledge; and, in the second
place, they are abiding. And this is why knowledge is more honourable
and excellent than true opinion, because fastened by a chain.
BODY

con360.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con361 = soc.conversations.create()



body_str = <<-BODY
 What you are saying, Socrates, seems to be very like the truth.
BODY

con361.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con362 = soc.conversations.create()



body_str = <<-BODY
 I too speak rather in ignorance; I only conjecture. And yet
that knowledge differs from true opinion is no matter of conjecture with
me. There are not many things which I profess to know, but this is most
certainly one of them.
BODY

con362.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Yes, Socrates; and you are quite right in saying so.
BODY

con362.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con363 = soc.conversations.create()



body_str = <<-BODY
 And am I not also right in saying that true opinion leading
the way perfects action quite as well as knowledge?
BODY

con363.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 There again, Socrates, I think you are right.
BODY

con363.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con364 = soc.conversations.create()



body_str = <<-BODY
 Then right opinion is not a whit inferior to knowledge, or
less useful in action; nor is the man who has right opinion inferior to
him who has knowledge?
BODY

con364.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 True.
BODY

con364.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con365 = soc.conversations.create()



body_str = <<-BODY
 And surely the good man has been acknowledged by us to be
useful?
BODY

con365.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con366 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con366.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Seeing then that men become good and useful to states, not
only because they have knowledge, but because they have right opinion,
and that neither knowledge nor right opinion is given to man by nature
or acquired by him--(do you imagine either of them to be given by
nature?
BODY

con366.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con367 = soc.conversations.create()



body_str = <<-BODY
 Not I.)
BODY

con367.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con368 = soc.conversations.create()



body_str = <<-BODY
 Then if they are not given by nature, neither are the good by
nature good?
BODY

con368.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con369 = soc.conversations.create()



body_str = <<-BODY
 Certainly not.
BODY

con369.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con370 = soc.conversations.create()



body_str = <<-BODY
 And nature being excluded, then came the question whether
virtue is acquired by teaching?
BODY

con370.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con371 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con371.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con372 = soc.conversations.create()



body_str = <<-BODY
 If virtue was wisdom (or knowledge), then, as we thought, it
was taught?
BODY

con372.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con373 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con373.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con374 = soc.conversations.create()



body_str = <<-BODY
 And if it was taught it was wisdom?
BODY

con374.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con375 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con375.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con376 = soc.conversations.create()



body_str = <<-BODY
 And if there were teachers, it might be taught; and if there
were no teachers, not?
BODY

con376.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con377 = soc.conversations.create()



body_str = <<-BODY
 True.
BODY

con377.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con378 = soc.conversations.create()



body_str = <<-BODY
 But surely we acknowledged that there were no teachers of
virtue?
BODY

con378.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con379 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con379.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 Then we acknowledged that it was not taught, and was not
wisdom?
BODY

con379.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con380 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con380.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And yet we admitted that it was a good?
BODY

con380.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con381 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con381.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con382 = soc.conversations.create()



body_str = <<-BODY
 And the right guide is useful and good?
BODY

con382.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con383 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con383.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con384 = soc.conversations.create()



body_str = <<-BODY
 And the only right guides are knowledge and true
opinion--these are the guides of man; for things which happen by chance
are not under the guidance of man: but the guides of man are true
opinion and knowledge.
BODY

con384.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con385 = soc.conversations.create()



body_str = <<-BODY
 I think so too.
BODY

con385.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con386 = soc.conversations.create()



body_str = <<-BODY
 But if virtue is not taught, neither is virtue knowledge.
BODY

con386.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con387 = soc.conversations.create()



body_str = <<-BODY
 Clearly not.
BODY

con387.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con388 = soc.conversations.create()



body_str = <<-BODY
 Then of two good and useful things, one, which is knowledge,
has been set aside, and cannot be supposed to be our guide in political
life.
BODY

con388.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con389 = soc.conversations.create()



body_str = <<-BODY
 I think not.
BODY

con389.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And therefore not by any wisdom, and not because they were
wise, did Themistocles and those others of whom Anytus spoke govern
states. This was the reason why they were unable to make others like
themselves--because their virtue was not grounded on knowledge.
BODY

con389.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con390 = soc.conversations.create()



body_str = <<-BODY
 That is probably true, Socrates.
BODY

con390.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con391 = soc.conversations.create()



body_str = <<-BODY
 But if not by knowledge, the only alternative which remains
is that statesmen must have guided states by right opinion, which is in
politics what divination is in religion; for diviners and also prophets
say many things truly, but they know not what they say.
BODY

con391.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con392 = soc.conversations.create()



body_str = <<-BODY
 So I believe.
BODY

con392.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con393 = soc.conversations.create()



body_str = <<-BODY
 And may we not, Meno, truly call those men 'divine' who,
having no understanding, yet succeed in many a grand deed and word?
BODY

con393.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con394 = soc.conversations.create()



body_str = <<-BODY
 Certainly.
BODY

con394.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con395 = soc.conversations.create()



body_str = <<-BODY
 Then we shall also be right in calling divine those whom we
were just now speaking of as diviners and prophets, including the whole
tribe of poets. Yes, and statesmen above all may be said to be divine
and illumined, being inspired and possessed of God, in which condition
they say many grand things, not knowing what they say.
BODY

con395.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con396 = soc.conversations.create()



body_str = <<-BODY
 Yes.
BODY

con396.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con397 = soc.conversations.create()



body_str = <<-BODY
 And the women too, Meno, call good men divine--do they not?
and the Spartans, when they praise a good man, say 'that he is a divine
man.'
BODY

con397.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


body_str = <<-BODY
 And I think, Socrates, that they are right; although very likely
our friend Anytus may take offence at the word.
BODY

con397.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con398 = soc.conversations.create()



body_str = <<-BODY
 I do not care; as for Anytus, there will be another
opportunity of talking with him. To sum up our enquiry--the result
seems to be, if we are at all right in our view, that virtue is neither
natural nor acquired, but an instinct given by God to the virtuous. Nor
is the instinct accompanied by reason, unless there may be supposed to
be among statesmen some one who is capable of educating statesmen. And
if there be such an one, he may be said to be among the living
what Homer says that Tiresias was among the dead, 'he alone has
understanding; but the rest are flitting shades'; and he and his virtue
in like manner will be a reality among shadows.
BODY

con398.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con399 = soc.conversations.create()



body_str = <<-BODY
 That is excellent, Socrates.
BODY

con399.messages.create({
  source_address: "meno#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })


 con400 = soc.conversations.create()



body_str = <<-BODY
 Then, Meno, the conclusion is that virtue comes to the
virtuous by the gift of God. But we shall never know the certain truth
until, before asking how virtue is given, we enquire into the actual
nature of virtue. I fear that I must go away, but do you, now that you
are persuaded yourself, persuade our friend Anytus. And do not let him
be so exasperated; if you can conciliate him, you will have done good
service to the Athenian people.
BODY

con400.messages.create({
  source_address: "daimonic#{EMAIL_SIGNATURE}",
  target_address: "meno#{EMAIL_SIGNATURE}",
  title: "Quick Question",
  body: body_str,
  time_created: 5.years.ago
  })




 con401 = soc.conversations.create()





 con402 = soc.conversations.create()





 con403 = soc.conversations.create()





 con404 = soc.conversations.create()





 con405 = soc.conversations.create()





 con406 = soc.conversations.create()





 con407 = soc.conversations.create()





 con408 = soc.conversations.create()





 con409 = soc.conversations.create()





 con410 = soc.conversations.create()





 con411 = soc.conversations.create()







 con412 = soc.conversations.create()





 con413 = soc.conversations.create()







 con414 = soc.conversations.create()





 con415 = soc.conversations.create()





 con416 = soc.conversations.create()





 con417 = soc.conversations.create()





 con418 = soc.conversations.create()





 con419 = soc.conversations.create()





 con420 = soc.conversations.create()





 con421 = soc.conversations.create()







 con422 = soc.conversations.create()













 con423 = soc.conversations.create()





 con424 = soc.conversations.create()







 con425 = soc.conversations.create()





 con426 = soc.conversations.create()





 con427 = soc.conversations.create()









 con428 = soc.conversations.create()





 con429 = soc.conversations.create()







 con430 = soc.conversations.create()





 con431 = soc.conversations.create()





 con432 = soc.conversations.create()





 con433 = soc.conversations.create()





 con434 = soc.conversations.create()









 con435 = soc.conversations.create()





 con436 = soc.conversations.create()





 con437 = soc.conversations.create()





 con438 = soc.conversations.create()





 con439 = soc.conversations.create()





 con440 = soc.conversations.create()





 con441 = soc.conversations.create()







 con442 = soc.conversations.create()





 con443 = soc.conversations.create()





 con444 = soc.conversations.create()
