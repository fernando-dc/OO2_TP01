rendering questions
renderOneQuestion: aQuestion on: htmlCanvas
	| tableBlock |
	tableBlock := [ htmlCanvas
		table: [ self renderQuestionTitle: aQuestion on: htmlCanvas.
			self renderQuesitonTopics: aQuestion on: htmlCanvas.
			self renderQuestionOwnerAndAnswers: aQuestion on: htmlCanvas.
			self renderQuestionReactions: aQuestion on: htmlCanvas.
			self session isLoggedIn
				ifTrue:
					[ self renderQuestionReactionButtons: aQuestion on: htmlCanvas ] ] ].

	"Falta pulir:"
	htmlCanvas tbsTable
		beCondensed;
		with: tableBlock