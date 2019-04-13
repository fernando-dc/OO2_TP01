rendering questions
renderTopQuestionsOn: htmlCanvas
	| topQuestions |
	topQuestions := self topQuestionsN: 5.
	
	htmlCanvas heading level2; with:'Latest questions:'.
	htmlCanvas tbsContainer:[
	topQuestions
		do: [ :question | 
			htmlCanvas div class: 'lightGreyBackground'; with:[ self renderOneQuestion: question on: htmlCanvas]. htmlCanvas horizontalRule.].
	].