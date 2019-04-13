rendering questions
renderQuestionOwnerAndAnswers: aQuestion on: htmlCanvas
	"
		htmlCanvas paragraph: [ htmlCanvas span: 'Question by: '. htmlCanvas anchor callback: [self showUser: aQuestion owner]; with: (aQuestion owner name).].
		htmlCanvas paragraph: aQuestion answers size printString , ' answers'.
	"
	
	" Bootstrap formatted "
	htmlCanvas tbsRow:[
			htmlCanvas tbsColumn mediumSize: 2; with: [ 
					htmlCanvas paragraph: [
							htmlCanvas span: 'Question by: '. 
							htmlCanvas anchor callback: [self showUser: aQuestion owner]; with: (aQuestion owner name)
							]
			]. 
		
			htmlCanvas tbsColumn: [ htmlCanvas paragraph: aQuestion answers size printString , ' respuestas' ] mediumSize:2.
	]
	