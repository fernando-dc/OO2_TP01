initialization
devTestNetwork
| user1 user2 user3 q1 q2 q3 q4 q5 q6 q7 a1 a2 topic1 topic2 topic3 topic4 topic5|
	topic1:= Topic withName: 'F1' description: 'Formula 1 topic'.
	topic2 := Topic withName: 'Books' description: 'Books topic'.
	topic3 := Topic withName: 'Motorsport' description:  'Petrolheads topic'.
	topic4 := Topic withName: 'Space' description: 'Space related topic'.
	topic5 := Topic withName: 'PC' description: 'PC gaming topic'.

	user1 := User withName: 'Vettel' password: 'Ferrari'  interests: { topic1.topic2.topic3. }.
	user2 := User withName: 'Elon' password: 'SpaceX' interests: { topic4.topic3. }.
	user3 := User withName: 'Alonso' password: 'LeMans' interests: { topic3.topic5. }.

	q1 := Question withText: 'Just what the title reads' title: 'Why is F1 so good?'  topics: { topic1. topic3. }.
	q2 := Question withText: 'nothing further' title: 'Who read Stephen Haking new book?' topics: { topic4. }.
	q3 := Question withText: 'In kilometers please!' title: 'How long is LeMans track?'  topics: { topic5. }.
	q4 := Question withText: 'On seaside framework' title: 'How do I redirect to home page?'  topics: { topic4. topic3. }.
	q5 := Question withText: 'At Monza' title: 'What is F1 cars top speed?'  topics: { topic5. }.
	q6 := Question withText: 'Dont say 42...' title: 'What is the meaning of life?'  topics: { topic2. }.
	q7 := Question withText: 'It comes from the fan' title: 'Why is my pc making funny noises?'  topics: { topic2. topic1. }.
	
	a1 := Answer withText: 'Just because it is'.
	a1 owner: user2.
	a2 := Answer withText: 'I did, fully recommend it!.'.
	a2 owner: user3.
	q1 addAnswer: a2.
	q2 addAnswer: a1.
	
	
	
	

	cuoora addUser: user1; addUser: user2; addUser: user3.
	cuoora addTopic: topic1.
	cuoora addTopic: topic2.
	cuoora addTopic: topic3.
	cuoora addTopic: topic4.
	cuoora addTopic: topic5.

	cuoora addQuestion: q1 from: user1.
	cuoora addQuestion: q2 from: user2. 
	cuoora addQuestion: q3 from: user3. 
	cuoora addQuestion: q4 from: user3. 
	cuoora addQuestion: q5 from: user3. 
	cuoora addQuestion: q6 from: user1. 
	cuoora addQuestion: q7 from: user1. 