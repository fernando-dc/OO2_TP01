rendering questions
renderQuestionOwnerAndAnswers: aQuestion on: htmlCanvas
	htmlCanvas
		tableRow: [ 
				htmlCanvas tableData: [ htmlCanvas paragraph: 'Question by: '. htmlCanvas anchor callback: [self showUser: (aQuestion owner)]; with: (aQuestion owner name)].
				htmlCanvas tableData: [ htmlCanvas paragraph: aQuestion answers size printString , ' answers' ] ]
		
	
	
	" Bootstrap formatted "
	"
	htmlCanvas tbsRow:[
			htmlCanvas tbsColumn: [ htmlCanvas paragraph: 'Realizada por: '] mediumSize:2. 
			htmlCanvas tbsColumn:[htmlCanvas anchor callback: [self showUser: aQuestion owner]; with: (aQuestion owner name)] mediumSize:2.
			htmlCanvas tableData: [ htmlCanvas paragraph: aQuestion answers size printString , ' respuestas' ]
	]
	"