rendering
renderAddNewQuestionOn: htmlCanvas
	(self session isLoggedIn)
	ifTrue:[
			htmlCanvas form:[
					htmlCanvas tbsButton callback: [ self add ]; bePrimary; with:'New answer'.
			]
	]
	ifFalse:[
			htmlCanvas heading level2; with: 'Login is necessary to add an answer.'
	]