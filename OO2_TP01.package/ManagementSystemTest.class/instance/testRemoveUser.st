tests
testRemoveUser

	self loadInfo.
	self deny: cuoora users isEmpty.
	
	cuoora removeUser: vettel.
	cuoora removeUser: lauda.
	
	self assert: cuoora users isEmpty. 