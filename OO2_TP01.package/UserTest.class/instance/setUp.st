initialization
setUp
|topic1 topic2|
	
	topic1 := Topic withName: 'F1' description:''.
	topic2 := Topic withName: 'Books' description:''.
	
	Vettel := User withName: 'Vettel' password: 'Ferrari' interests: { topic1. }.
	Lauda := User withName: 'Lauda' password: 'Nurburgring' interests: { topic2. }
	 