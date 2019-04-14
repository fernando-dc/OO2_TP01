tests
testAreValidTopics
	self loadInfo.
	
	self assert: (cuoora areValidTopics: #('F1' 'Books' )) equals: true.
	self assert: (cuoora areValidTopics: #('invalid topic' 'another invalid topic' 'F1')) equals: false.