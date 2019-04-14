tests
testStopFollowing
	Vettel follow: Lauda.
	self assert: (Vettel follows includes: Lauda).
	
	Vettel stopFollowing: Lauda.
	
	self assert: Vettel follows isEmpty.
	self deny: (Vettel follows includes: Lauda)