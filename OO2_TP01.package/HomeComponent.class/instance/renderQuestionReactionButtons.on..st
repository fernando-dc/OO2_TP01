rendering questions
renderQuestionReactionButtons: aQuestion on: htmlCanvas
	^ htmlCanvas
		tableRow: [ htmlCanvas
				tableData: [ 
						htmlCanvas tbsGlyphIcon iconThumbsUp.
						htmlCanvas anchor
						callback: [ self likeQuestion: aQuestion ];
						with: 'Like' ].
			htmlCanvas
				tableData: [ 
						htmlCanvas tbsGlyphIcon iconThumbsDown.
						htmlCanvas anchor
						callback: [ self dislikeQuestion: aQuestion ];
						with: 'Dislike' ] ]