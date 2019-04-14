tests
testGetAllAnswers
	self assert: (cuoora getAllAnswers) isEmpty.
	
	self loadInfo.
	
	self deny: (cuoora getAllAnswers) isEmpty.