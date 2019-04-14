adding
testAddTopic
|topic2 |
	topic2 := Topic withName: 'Space' description:''.
	self assert: question topics size equals: 1.
	
	question addTopic: topic2.
	
	self assert: question topics size equals: 2.