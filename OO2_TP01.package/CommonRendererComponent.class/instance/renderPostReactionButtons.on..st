rendering posts
renderPostReactionButtons: aPost on: htmlCanvas
	"
	htmlCanvas tbsGlyphIcon iconThumbsUp.
						htmlCanvas anchor
						callback: [ self likePost: aPost ];
						with: 'Like'.
	
						htmlCanvas tbsGlyphIcon iconThumbsDown.
						htmlCanvas anchor
						callback: [ self dislikePost: aPost ];
						with: 'Dislike'.
	"
	
	"Bootstrap formatted:"
		htmlCanvas tbsRow: [
				htmlCanvas tbsColumn mediumSize:1;
								with:[
										htmlCanvas tbsGlyphIcon iconThumbsUp.
										htmlCanvas anchor callback: [ self likePost: aPost ]; with: 'Like'.
									].
				htmlCanvas tbsColumn mediumSize:1;
								with:[
									htmlCanvas tbsGlyphIcon iconThumbsDown.
									htmlCanvas anchor callback: [ self dislikePost: aPost ]; with: 'Dislike'.
								].
				].