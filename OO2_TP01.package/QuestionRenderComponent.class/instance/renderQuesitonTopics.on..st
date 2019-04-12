rendering questions
renderQuesitonTopics: aQuestion on: htmlCanvas
	htmlCanvas
		tableRow: [ htmlCanvas
				tableData: [ htmlCanvas
						emphasis: [ htmlCanvas
								paragraph: 'Topics: ' , (aQuestion topics collect: [ :t | t name ]) asCommaString ] ] ]