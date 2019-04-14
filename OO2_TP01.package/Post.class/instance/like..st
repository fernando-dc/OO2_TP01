accessing
like: anUser
	self removeReaction: anUser.
	reactions add: (Reaction withUser:anUser isLike:true).
