rendering
renderLoginForm: htmlCanvas
	htmlCanvas
		form: [ htmlCanvas
				table: [ htmlCanvas
						tableRow: [ htmlCanvas tableData: [ htmlCanvas text: 'User name: ' ].
							htmlCanvas
								tableData: [ htmlCanvas textInput
										on: #userString of: self;
										placeholder: 'Type username here' ] ].
					htmlCanvas
						tableRow: [ htmlCanvas tableData: [ htmlCanvas text: 'Password: ' ].
							htmlCanvas
								tableData: [ htmlCanvas textInput
										on: #password of: self;
										placeholder: 'Type password here';type:'password' ] ] ].
			htmlCanvas tbsButton
				callback: [ self login ];
				beSuccess;
				with: 'Accept'.
			htmlCanvas tbsButton
				callback: [ self answer: nil ];
				beDefault;
				with: 'Cancel' ]