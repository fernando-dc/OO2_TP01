tests
testAddQuestion
	self assert: cuoora getAllQuestions isEmpty.
	
	self loadInfo.
	
	self deny: cuoora getAllQuestions isEmpty.