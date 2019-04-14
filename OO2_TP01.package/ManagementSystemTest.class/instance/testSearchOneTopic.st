tests
testSearchOneTopic
	self deny: (cuoora searchOneTopic: 'F1') isNotNil.
	
	self loadInfo.
	
	self assert: (cuoora searchOneTopic: 'F1') isNotNil.
	self deny: (cuoora searchOneTopic: 'Space') isNotNil. "inexistent topic"