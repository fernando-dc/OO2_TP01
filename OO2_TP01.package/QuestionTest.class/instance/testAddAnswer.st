tests
testAddAnswer

	self assert: question answers isEmpty.
	
	question addAnswer: answer.
	
	self deny: question answers isEmpty.
	self assert: question answers size equals: 1.