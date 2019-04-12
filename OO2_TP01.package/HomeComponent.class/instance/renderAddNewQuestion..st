rendering
renderAddNewQuestion: htmlCanvas
	htmlCanvas form:[
			htmlCanvas tbsButton callback:[ self show: (NewQuestionComponent for: cuoora) ]; bePrimary; beLarge; with: 'New question'.
	].