tests
testRemoveReaction

	self assert: question reactions isEmpty.
	self assert: question likedBy isEmpty.
	self assert: question dislikedBy isEmpty.
	self deny: (question isReactedBy: vettel).
	
	question like: vettel.
	
	self deny: question reactions isEmpty.
	self assert: (question likedBy includes: vettel).
	self deny: (question dislikedBy includes: vettel).
	self assert: (question isReactedBy: vettel).
	
	question removeReaction: vettel.
	
	self assert: question reactions isEmpty.
	self assert: question likedBy isEmpty.
	self assert: question dislikedBy isEmpty.
	self deny: (question isReactedBy: vettel).
	
	
	question dislike: vettel.
	
	self assert: (question isReactedBy: vettel).
	self deny: (question likedBy includes: vettel).
	self assert: (question dislikedBy includes: vettel).
	
	question removeReaction: vettel.
	
	self assert: question reactions isEmpty.
	self assert: question likedBy isEmpty.
	self assert: question dislikedBy isEmpty.
	self deny: (question isReactedBy: vettel).