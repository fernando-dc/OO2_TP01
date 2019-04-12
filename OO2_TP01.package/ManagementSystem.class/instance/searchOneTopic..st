testing
searchOneTopic: aTopicString
	^topics detect: [ :topic | topic name = aTopicString ] ifNone: [ ^nil ].