rendering
renderContentOn: htmlCanvas
	"DEV CODE"

	"/ DEV CODE"

	self renderHeading: htmlCanvas.
	htmlCanvas div class: 'homePageLineStyle'.
	
	htmlCanvas div
		class: 'addPadding';
		with: [ self session isLoggedIn
				ifTrue: [ htmlCanvas tbsContainer: [ self renderAddNewQuestion: htmlCanvas ].
					self renderRelevantQuestionsOn: htmlCanvas ]
				ifFalse: [ self renderTopQuestionsOn: htmlCanvas ].
				htmlCanvas anchor	callback: [ self createTestInstance ]; with: 'Crear instancia de prueba' ]