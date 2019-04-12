rendering
renderContentOn: htmlCanvas
	self renderHeading: htmlCanvas.
	
	self renderOneQuestion: question on: htmlCanvas.
	htmlCanvas horizontalRule.
	
	htmlCanvas tbsContainer:[
				self renderAddNewQuestionOn: htmlCanvas. 
	].
	
	htmlCanvas render: newAnswer.
	
	self renderAnswersOn: htmlCanvas.
	
	htmlCanvas tbsContainer:[
			htmlCanvas heading level3; with: 'There are no more answers.'.
	].

	