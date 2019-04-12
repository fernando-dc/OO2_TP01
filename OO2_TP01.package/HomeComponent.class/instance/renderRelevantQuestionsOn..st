rendering questions
renderRelevantQuestionsOn: htmlCanvas
	| relevantQuestions |
	relevantQuestions := self topRelevantQuestionsN: 5.
	
	htmlCanvas heading level2; with:'Latest questions:'.
	htmlCanvas tbsContainer:[
	relevantQuestions
		do: [ :question | self renderOneQuestion: question on: htmlCanvas. htmlCanvas horizontalRule.]
	].