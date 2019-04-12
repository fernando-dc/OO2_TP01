callbacks
saveQuestion
|question |
	
	topics := topics splitOn: ','.
	(cuoora areValidTopics: topics)
	ifTrue: [ 
			question := Question withText: text title: title topics: (cuoora searchTopics: topics).
			cuoora addQuestion: question from: (self session user).
			self answer.
			]
	ifFalse: [
			topics := nil.
			self inform: 'WARNING! one or more topics are invalid.'.
			].
		
	