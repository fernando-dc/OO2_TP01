accessing
getAllAnswers
	^ (self getAllQuestions flatCollect: [ :question | question answers ]) asSet.