accessing
unfollow: anUser
	follows remove: anUser ifAbsent: [ ^nil ]. 