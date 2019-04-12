rendering
renderContentOn: htmlCanvas
	htmlCanvas form:[
			htmlCanvas emphasis: [ htmlCanvas heading level2; with:'ANSWER:' ].
			htmlCanvas tbsContainer:[
				htmlCanvas textInput value: answer text; callback:[:value | answer withText: value]; placeholder: 'Type answer here'; size:50.
				htmlCanvas break.
				htmlCanvas tbsButton callback: [ self saveAnswer ]; beSuccess; with: 'Save'.
				htmlCanvas tbsButton callback: [ self answer: nil]; beDanger; with: 'Cancel'.
			].
	].