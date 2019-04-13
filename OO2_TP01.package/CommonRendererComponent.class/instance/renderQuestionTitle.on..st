rendering questions
renderQuestionTitle: aQuestion on: htmlCanvas
	htmlCanvas
		tableRow: [ htmlCanvas
				tableData: [ htmlCanvas anchor
						callback: [ self openSelectedQuestion: aQuestion ];
						with:  aQuestion title. 
						
						
						"	(htmlCanvas
								emphasis: [ htmlCanvas heading
										level3;
										with: aQuestion title ] )" ]
								]. 