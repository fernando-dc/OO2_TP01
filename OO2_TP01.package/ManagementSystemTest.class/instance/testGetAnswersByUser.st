tests
testGetAnswersByUser
	self loadInfo.
	
	self deny: (cuoora getAnswersByUser: vettel) isEmpty.
	self assert: (cuoora getAnswersByUser: lauda) isEmpty.