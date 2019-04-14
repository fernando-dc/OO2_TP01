accessing
dislike: anUser
	self removeReaction: anUser.
	reactions add: (Reaction withUser:anUser isLike: false).