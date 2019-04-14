tests
testGetQuestionsByTopic

	self loadInfo.
	
	self deny: (cuoora getQuestionsByTopic: topic1) isEmpty.