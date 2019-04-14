tests
testQuestion
| question1 |

	question1 := Question withText: 'text' title: 'title'  topics: (Vettel interests).
	question1 owner: Vettel.
	
	self assert: Vettel questions isEmpty.
	
	Vettel addQuestion: question1.
	
	self assert: Vettel questions size equals: 1.
	self assert: (Vettel questions includes: question1).
	 