rendering
renderContentOn: htmlCanvas
	self renderHeading: htmlCanvas.
	
	htmlCanvas div class: 'questionStyle'; with:[
			self renderOneQuestion: question on: htmlCanvas.
	].

	htmlCanvas horizontalRule.
	
	htmlCanvas tbsContainer:[
				self renderAddNewQuestionOn: htmlCanvas. 
	].
	
	htmlCanvas render: newAnswer.
	
	htmlCanvas div class: 'answerStyle'; with:[
			self renderAnswersOn: htmlCanvas.
	].
	
	htmlCanvas tbsContainer:[
			htmlCanvas heading level3; with: 'There are no more answers.'.
	].

	