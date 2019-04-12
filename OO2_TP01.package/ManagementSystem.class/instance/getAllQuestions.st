accessing
getAllQuestions
	^ (users flatCollect: [ :user | user questions ]) asSet	.