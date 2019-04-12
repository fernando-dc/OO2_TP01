accessing
topQuestionsN: aTopNumber
|allQuestions|
	allQuestions := cuoora getAllQuestions asSortedCollection: [ :q1 :q2 | q1 creationDate > q2 creationDate].
	((allQuestions size) < aTopNumber)
		ifTrue: [ ^ allQuestions first: allQuestions size  ].
	
	^ allQuestions first: aTopNumber.
	
	