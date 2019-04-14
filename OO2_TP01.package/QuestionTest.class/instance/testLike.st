tests
testLike
	self assert: question reactions isEmpty.
	self assert: question likedBy isEmpty.
	
	question like: vettel.
	
	self deny: question reactions isEmpty.
	self deny: question likedBy isEmpty.