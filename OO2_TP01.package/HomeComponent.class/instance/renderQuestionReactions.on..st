rendering questions
renderQuestionReactions: aQuestion on: htmlCanvas
	htmlCanvas tableRow
		with: [	htmlCanvas tableData: [ htmlCanvas paragraph: aQuestion likes size printString , ' likes' ].
					htmlCanvas tableData: '|'.
					htmlCanvas tableData: [ htmlCanvas paragraph: aQuestion dislikes size printString , ' dislikes' ]
					 ]
			
		
	
"
					htmlCanvas tableData: [ htmlCanvas paragraph: aQuestion likes size printString , ' likes' ].
					htmlCanvas tableData: '|'.
					htmlCanvas tableData: [ htmlCanvas paragraph: aQuestion dislikes size printString , ' dislikes' ]
					
					
					htmlCanvas tbsColumn: [ htmlCanvas paragraph: aQuestion likes size printString , ' likes' ] mediumSize:1.
					htmlCanvas tbsColumn:[htmlCanvas paragraph:'|'] mediumSize:1.
					htmlCanvas tbsColumn: [ htmlCanvas paragraph: aQuestion dislikes size printString , ' dislikes' ] mediumSize:1.	
"