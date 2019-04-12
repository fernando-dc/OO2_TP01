rendering posts
renderPostReactionButtons: aPost on: htmlCanvas
	^ htmlCanvas
		tableRow: [ htmlCanvas
				tableData: [ 
						htmlCanvas tbsGlyphIcon iconThumbsUp.
						htmlCanvas anchor
						callback: [ self likePost: aPost ];
						with: 'Like' ].
			htmlCanvas
				tableData: [ 
						htmlCanvas tbsGlyphIcon iconThumbsDown.
						htmlCanvas anchor
						callback: [ self dislikePost: aPost ];
						with: 'Dislike' ] ]