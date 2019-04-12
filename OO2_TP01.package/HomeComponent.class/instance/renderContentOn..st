rendering
renderContentOn: htmlCanvas
	"DEV CODE"

	"/ DEV CODE"
	
	self renderHeading: htmlCanvas.
	
	
	htmlCanvas preformatted: [].
	htmlCanvas horizontalRule.
	
	(self session isLoggedIn)
	ifTrue:[
			htmlCanvas tbsContainer:[
					self renderAddNewQuestion: htmlCanvas
			].
			self renderRelevantQuestionsOn: htmlCanvas.
	]
	ifFalse:[
			self renderTopQuestionsOn: htmlCanvas.
	].
	

	htmlCanvas anchor callback: [ self devTestNetwork  ]; with: 'test network'