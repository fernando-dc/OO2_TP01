initialization
setUp

	topic1 := Topic withName: 'F1' description:''.
	topic2 := Topic withName: 'Books' description:''.
	
	vettel := User withName: 'Vettel' password: 'Ferrari' interests: { topic1. }.
	lauda := User withName: 'Lauda' password: 'Nurburgring' interests: { topic2. }.
	
	answer := Answer withText: 'answer'.
	answer owner: vettel.
	
	question := Question withText: 'text' title: 'Why is F1 the best sport?' topics: {topic1.}.
	
	cuoora := ManagementSystem new.
	 