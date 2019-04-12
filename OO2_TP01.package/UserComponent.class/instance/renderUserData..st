rendering
renderUserData: htmlCanvas
	
	htmlCanvas
			tbsRow: [ 
						htmlCanvas
							tbsColumn: [ htmlCanvas heading
								level2;
								with: 'User: ' , user name ] mediumSize:2.
					htmlCanvas tbsColumn: [ htmlCanvas break.self renderFollowOption: htmlCanvas ] mediumSize:1] 