tests
testDislike
	self assert: question reactions isEmpty.
	self assert: question dislikedBy isEmpty.
	
	question dislike: vettel.
	
	self deny: question reactions isEmpty.
	self deny: question dislikedBy isEmpty.