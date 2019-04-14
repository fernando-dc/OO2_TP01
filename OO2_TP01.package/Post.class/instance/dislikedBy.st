accessing
dislikedBy
	^ (self dislikes) collect: [ :dislike | dislike user ].