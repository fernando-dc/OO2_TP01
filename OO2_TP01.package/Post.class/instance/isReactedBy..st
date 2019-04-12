testing
isReactedBy: anUser
| users |
	users := self reactions collect: [ :reaction | reaction user ].
	
	^ users includes: anUser.