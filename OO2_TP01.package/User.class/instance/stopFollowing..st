accessing
stopFollowing: anUser
	follows remove: anUser ifAbsent: nil.