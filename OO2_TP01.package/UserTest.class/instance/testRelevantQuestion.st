tests
testRelevantQuestion
| question1 |

	question1 := Question withText: 'text' title: 'title'  topics: (Vettel interests).
	question1 owner: Vettel.
	Vettel addQuestion: question1.

	self deny: (Lauda questionIsRelevant: question1).
	
	Lauda follow: Vettel.
	self assert: (Lauda questionIsRelevant: question1).