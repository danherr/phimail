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
  body: "The Will to Truth, which is to tempt us to many a hazardous enterprise, the famous Truthfulness of which all philosophers have hitherto spoken with respect, what questions has this Will to Truth not laid before us! What strange, perplexing, questionable questions! It is already a long story; yet it seems as if it were hardly commenced. Is it any wonder if we at last grow distrustful, lose patience, and turn impatiently away? That this Sphinx teaches us at last to ask questions ourselves? WHO is it really that puts questions to us here? WHAT really is this \"Will to Truth\" in us? In fact we made a long halt at the question as to the origin of this Will—until at last we came to an absolute standstill before a yet more fundamental question. We inquired about the VALUE of this Will. Granted that we want the truth: WHY NOT RATHER untruth? And uncertainty? Even ignorance? The problem of the value of truth presented itself before us—or was it we who presented ourselves before the problem? Which of us is the Oedipus here? Which the Sphinx? It would seem to be a rendezvous of questions and notes of interrogation. And could it be believed that it at last seems to us as if the problem had never been propounded before, as if we were the first to discern it, get a sight of it, and RISK RAISING it? For there is risk in raising it, perhaps there is no greater risk.",
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
  body: "It is difficult to be understood, especially when one thinks and lives gangasrotogati [Footnote: Like the river Ganges: presto.] among those only who think and live otherwise—namely, kurmagati [Footnote: Like the tortoise: lento.], or at best \"froglike,\" mandeikagati [Footnote: Like the frog: staccato.] (I do everything to be \"difficultly understood\" myself!)—and one should be heartily grateful for the good will to some refinement of interpretation. As regards \"the good friends,\" however, who are always too easy-going, and think that as friends they have a right to ease, one does well at the very first to grant them a play-ground and romping-place for misunderstanding—one can thus laugh still; or get rid of them altogether, these good friends—and laugh then also!",
  time_created: 6.years.ago
  })

con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "What is most difficult to render from one language into another is the TEMPO of its style, which has its basis in the character of the race, or to speak more physiologically, in the average TEMPO of the assimilation of its nutriment. There are honestly meant translations, which, as involuntary vulgarizations, are almost falsifications of the original, merely because its lively and merry TEMPO (which overleaps and obviates all dangers in word and expression) could not also be rendered. A German is almost incapacitated for PRESTO in his language; consequently also, as may be reasonably inferred, for many of the most delightful and daring NUANCES of free, free-spirited thought. And just as the buffoon and satyr are foreign to him in body and conscience, so Aristophanes and Petronius are untranslatable for him. Everything ponderous, viscous, and pompously clumsy, all long-winded and wearying species of style, are developed in profuse variety among Germans—pardon me for stating the fact that even Goethe's prose, in its mixture of stiffness and elegance, is no exception, as a reflection of the \"good old time\" to which it belongs, and as an expression of German taste at a time when there was still a \"German taste,\" which was a rococo-taste in moribus et artibus. Lessing is an exception, owing to his histrionic nature, which understood much, and was versed in many things; he who was not the translator of Bayle to no purpose, who took refuge willingly in the shadow of Diderot and Voltaire, and still more willingly among the Roman comedy-writers—Lessing loved also free-spiritism in the TEMPO, and flight out of Germany. But how could the German language, even in the prose of Lessing, imitate the TEMPO of Machiavelli, who in his \"Principe\" makes us breathe the dry, fine air of Florence, and cannot help presenting the most serious events in a boisterous allegrissimo, perhaps not without a malicious artistic sense of the contrast he ventures to present—long, heavy, difficult, dangerous thoughts, and a TEMPO of the gallop, and of the best, wantonest humour? Finally, who would venture on a German translation of Petronius, who, more than any great musician hitherto, was a master of PRESTO in invention, ideas, and words? What matter in the end about the swamps of the sick, evil world, or of the \"ancient world,\" when like him, one has the feet of a wind, the rush, the breath, the emancipating scorn of a wind, which makes everything healthy, by making everything RUN! And with regard to Aristophanes—that transfiguring, complementary genius, for whose sake one PARDONS all Hellenism for having existed, provided one has understood in its full profundity ALL that there requires pardon and transfiguration; there is nothing that has caused me to meditate more on PLATO'S secrecy and sphinx-like nature, than the happily preserved petit fait that under the pillow of his death-bed there was found no \"Bible,\" nor anything Egyptian, Pythagorean, or Platonic—but a book of Aristophanes. How could even Plato have endured life—a Greek life which he repudiated—without an Aristophanes!",
  time_created: 6.years.ago
  })

con.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "bill.jones@hotmail.com, fred.jones@hotmail.com",
  title: "Re: Would you like to build a snowman?",
  body: "It is the business of the very few to be independent; it is a privilege of the strong. And whoever attempts it, even with the best right, but without being OBLIGED to do so, proves that he is probably not only strong, but also daring beyond measure. He enters into a labyrinth, he multiplies a thousandfold the dangers which life in itself already brings with it; not the least of which is that no one can see how and where he loses his way, becomes isolated, and is torn piecemeal by some minotaur of conscience. Supposing such a one comes to grief, it is so far from the comprehension of men that they neither feel it, nor sympathize with it. And he cannot any longer go back! He cannot even go back again to the sympathy of men!",
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
  body: "In the Jewish \"Old Testament,\" the book of divine justice, there are men, things, and sayings on such an immense scale, that Greek and Indian literature has nothing to compare with it. One stands with fear and reverence before those stupendous remains of what man was formerly, and one has sad thoughts about old Asia and its little out-pushed peninsula Europe, which would like, by all means, to figure before Asia as the \"Progress of Mankind.\" To be sure, he who is himself only a slender, tame house-animal, and knows only the wants of a house-animal (like our cultured people of today, including the Christians of \"cultured\" Christianity), need neither be amazed nor even sad amid those ruins—the taste for the Old Testament is a touchstone with respect to \"great\" and \"small\": perhaps he will find that the New Testament, the book of grace, still appeals more to his heart (there is much of the odour of the genuine, tender, stupid beadsman and petty soul in it). To have bound up this New Testament (a kind of ROCOCO of taste in every respect) along with the Old Testament into one book, as the \"Bible,\" as \"The Book in Itself,\" is perhaps the greatest audacity and \"sin against the Spirit\" which literary Europe has upon its conscience.",
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
  body: "There is a great ladder of religious cruelty, with many rounds; but three of these are the most important. Once on a time men sacrificed human beings to their God, and perhaps just those they loved the best—to this category belong the firstling sacrifices of all primitive religions, and also the sacrifice of the Emperor Tiberius in the Mithra-Grotto on the Island of Capri, that most terrible of all Roman anachronisms. Then, during the moral epoch of mankind, they sacrificed to their God the strongest instincts they possessed, their \"nature\"; THIS festal joy shines in the cruel glances of ascetics and \"anti-natural\" fanatics. Finally, what still remained to be sacrificed? Was it not necessary in the end for men to sacrifice everything comforting, holy, healing, all hope, all faith in hidden harmonies, in future blessedness and justice? Was it not necessary to sacrifice God himself, and out of cruelty to themselves to worship stone, stupidity, gravity, fate, nothingness? To sacrifice God for nothingness—this paradoxical mystery of the ultimate cruelty has been reserved for the rising generation; we all know something thereof already.",
  time_created: 5.hours.ago})

con2.messages.create({
  source_address: "ubermensch#{EMAIL_SIGNATURE}",
  target_address: "daimonic#{EMAIL_SIGNATURE}",
  title: "Re: Yo Freddy, what is Justice?",
  body: "Whoever, like myself, prompted by some enigmatical desire, has long endeavoured to go to the bottom of the question of pessimism and free it from the half-Christian, half-German narrowness and stupidity in which it has finally presented itself to this century, namely, in the form of Schopenhauer's philosophy; whoever, with an Asiatic and super-Asiatic eye, has actually looked inside, and into the most world-renouncing of all possible modes of thought—beyond good and evil, and no longer like Buddha and Schopenhauer, under the dominion and delusion of morality,—whoever has done this, has perhaps just thereby, without really desiring it, opened his eyes to behold the opposite ideal: the ideal of the most world-approving, exuberant, and vivacious man, who has not only learnt to compromise and arrange with that which was and is, but wishes to have it again AS IT WAS AND IS, for all eternity, insatiably calling out da capo, not only to himself, but to the whole piece and play; and not only the play, but actually to him who requires the play—and makes it necessary; because he always requires himself anew—and makes himself necessary.—What? And this would not be—circulus vitiosus deus?",
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
