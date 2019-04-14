rendering
renderUserData: htmlCanvas
	
	htmlCanvas  tbsJumbotron: [
					htmlCanvas tbsColumn: [htmlCanvas heading level2; with: ('User name: ' , user name)] mediumSize:2 .
					htmlCanvas tbsColumn: [ htmlCanvas break.self renderFollowOption: htmlCanvas ] mediumSize:1.
					htmlCanvas break.
					htmlCanvas break.
	].