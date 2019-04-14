tests
testGetRelevantQuestions
|relevantQuestion|
	self loadInfo.
	relevantQuestion := Question withText: 'text' title:  'title' topics: (lauda interests). 
	self assert: (cuoora getRelevantQuestions: lauda) isEmpty.
	
	cuoora addQuestion: relevantQuestion from: vettel.
	
	self deny: (cuoora getRelevantQuestions: lauda) isEmpty. 