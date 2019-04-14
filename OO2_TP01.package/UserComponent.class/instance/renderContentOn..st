rendering
renderContentOn: htmlCanvas
	self renderHeading: htmlCanvas.
	
	htmlCanvas div class: 'userDataStyle'; with:[
			self renderUserData: htmlCanvas.
	].

	"revisar el comportameinto del renderer cuando se clickea una pregunta"
	"questionRender do: [ :e | htmlCanvas render: e ]."
	
	htmlCanvas horizontalRule.
	
	htmlCanvas heading level2;with: 'Questions made by: ', (user name).
	htmlCanvas break.
	
	user questions
		do: [ :question | 
			htmlCanvas div class: 'lightGreyBackground'; with:[ self renderOneQuestion: question on: htmlCanvas.].
			htmlCanvas horizontalRule.
			htmlCanvas break ].