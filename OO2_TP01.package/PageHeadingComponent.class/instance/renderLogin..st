rendering
renderLogin: htmlCanvas
	self session isLoggedIn
		ifFalse: [htmlCanvas form:[
						htmlCanvas tbsButton
						callback: [ self login ];
						bePrimary;
						beLarge;
						with: 'Login here!' .
						
						]
				]
		ifTrue: [ 
			htmlCanvas form:[ 
						self renderLoggedUserDataOn: htmlCanvas.
						htmlCanvas tbsButton
						callback: [ self session logout ];
						beDanger;
						beLarge;
						with: 'Logout'.
						]
				].