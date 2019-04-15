tests
testCreation
	| user |
	user :=  User withName: 'Vettel' password: 'Ferrari' interests: { }.
	reaction := Reaction withUser: user isLike: true.
	
	self assert: reaction isLike.
	self assert: reaction user equals: user.
	
	reaction := Reaction withUser: user isLike: false.
	self deny: reaction isLike.