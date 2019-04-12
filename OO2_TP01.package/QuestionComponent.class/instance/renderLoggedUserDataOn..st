rendering
renderLoggedUserDataOn: htmlCanvas
|loggedUser|
	self session isLoggedIn
	ifTrue: [
			loggedUser := self session user.
			"htmlCanvas heading level3; with: (user name) ]."
			htmlCanvas heading level3; with: [htmlCanvas anchor callback: [self showUser: loggedUser];with: (loggedUser name) ]. ].