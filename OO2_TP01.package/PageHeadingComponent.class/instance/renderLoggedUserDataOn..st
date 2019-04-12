rendering
renderLoggedUserDataOn: htmlCanvas
|user|
	self session isLoggedIn
	ifTrue: [
			user := self session user.
			htmlCanvas heading level3; with: (user name) ].