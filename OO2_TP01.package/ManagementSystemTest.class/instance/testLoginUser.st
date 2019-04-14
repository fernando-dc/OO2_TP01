tests
testLoginUser
|user|
	self loadInfo.
	user := cuoora loginUser: 'Vettel' password: 'Ferrari'.
	
	self assert: user name equals: 'Vettel'.
	self assert: (cuoora loginUser: 'Vettel' password: 'Ferrari') isNotNil.
	self deny: (cuoora loginUser: 'Inexistent user' password: 'some password') isNotNil.
	