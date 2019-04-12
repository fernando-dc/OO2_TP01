accessing
getQuestionsByTopic: aTopic
| questions |
	questions := self getAllQuestions.
	^ questions select: [ :question | question topics includes: aTopic].