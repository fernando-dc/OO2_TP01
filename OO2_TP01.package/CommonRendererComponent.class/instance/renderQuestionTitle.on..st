rendering questions
renderQuestionTitle: aQuestion on: htmlCanvas
	htmlCanvas
		emphasis: [ htmlCanvas heading
				level4;
				with: [ htmlCanvas anchor
						callback: [ self openSelectedQuestion: aQuestion ];
						with: aQuestion title ] ]