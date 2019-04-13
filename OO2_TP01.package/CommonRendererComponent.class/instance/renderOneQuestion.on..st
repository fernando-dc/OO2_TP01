rendering questions
renderOneQuestion: aQuestion on: htmlCanvas
	
	 htmlCanvas
		table: [ self renderQuestionTitle: aQuestion on: htmlCanvas.
			self renderQuesitonTopics: aQuestion on: htmlCanvas.
			self renderQuestionOwnerAndAnswers: aQuestion on: htmlCanvas.
			self renderPostReactions: aQuestion on: htmlCanvas.
			self session isLoggedIn
				ifTrue:
					[ self renderPostReactionButtons: aQuestion on: htmlCanvas ] ].

	"Falta pulir:
	htmlCanvas tbsTable
		beCondensed;
		with: tableBlock"