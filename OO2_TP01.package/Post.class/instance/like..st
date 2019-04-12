accessing
like: anUser
	self removeReaction: anUser.
	likes add: (Reaction withUser:anUser).
