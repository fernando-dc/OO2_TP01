callbacks
login
|user |
	user := cuoora loginUser: userString password: password.
	(user isNil)
			ifTrue: [ self inform: 'User name and password doesnt match! ' ]
			ifFalse: [ self answer:user ]