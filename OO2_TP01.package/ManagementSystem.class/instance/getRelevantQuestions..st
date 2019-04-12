accessing
getRelevantQuestions: anUser
| questions |
	questions := self getAllQuestions.
	"^ questions select: [ :question | (question topics intersection: anUser interests) isNotEmpty ]."
	^ questions select: [ :question | anUser questionIsRelevant: question ].