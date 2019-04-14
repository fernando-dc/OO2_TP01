tests
testAddUser
	
	self assert: cuoora users isEmpty.
	self loadInfo.
	
	self deny: cuoora users isEmpty.
	self assert: (cuoora users includes: vettel).
	self assert: (cuoora users includes: lauda)	