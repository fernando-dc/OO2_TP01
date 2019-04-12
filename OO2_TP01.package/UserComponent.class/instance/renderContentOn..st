rendering
renderContentOn: htmlCanvas
	self renderHeading: htmlCanvas.
	
	self renderUserData: htmlCanvas.

	"revisar el comportameinto del renderer cuando se clickea una pregunta"
	"questionRender do: [ :e | htmlCanvas render: e ]."
	
	htmlCanvas horizontalRule.
	
	htmlCanvas heading level2;with: 'Questions made by: ', (user name).
	user questions
		do: [ :question | 
			self renderOneQuestion: question on: htmlCanvas.
			htmlCanvas horizontalRule.
			htmlCanvas break ].