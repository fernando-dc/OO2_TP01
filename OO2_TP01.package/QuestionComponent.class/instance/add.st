adding
add
	newAnswer := NewAnswerComponent new answer: (Answer new).
	
	newAnswer onAnswer: [ :value |
		(value isNil) 
		
			ifFalse: [question addAnswer: value ].
		newAnswer := nil.	
	]