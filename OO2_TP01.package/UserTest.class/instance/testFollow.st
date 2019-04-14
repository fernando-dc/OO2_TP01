tests
testFollow
	self assert: Vettel follows isEmpty.
	self assert: Lauda follows isEmpty.
	Vettel follow: Lauda.
	self deny: Vettel follows isEmpty.
	self assert: (Vettel follows includes: Lauda).
	self assert: Vettel follows size equals: 1.