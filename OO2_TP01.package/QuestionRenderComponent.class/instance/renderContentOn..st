rendering
renderContentOn: htmlCanvas

	 htmlCanvas
		table: [ self renderQuestionTitle: question on: htmlCanvas.
			self renderQuesitonTopics: question on: htmlCanvas.
			self renderQuestionOwnerAndAnswers: question on: htmlCanvas.
			self renderPostReactions: question on: htmlCanvas.
			self session isLoggedIn
				ifTrue:
					[ self renderPostReactionButtons: question on: htmlCanvas ] ].
