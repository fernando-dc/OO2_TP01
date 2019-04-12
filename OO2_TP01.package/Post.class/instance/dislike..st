accessing
dislike: anUser
	self removeReaction: anUser.
	dislikes add: (Reaction withUser:anUser).