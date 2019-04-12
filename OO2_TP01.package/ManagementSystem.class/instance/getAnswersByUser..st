accessing
getAnswersByUser: anUser
| answers |
	answers := self getAllAnswers.
	^ answers select: [ :answer | answer owner = anUser ].