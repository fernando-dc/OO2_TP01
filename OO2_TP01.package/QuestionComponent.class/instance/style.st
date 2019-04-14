hooks
style
	^ (super style) , 
			' .questionStyle { padding-left: 25px; padding-right: 25px; }
				.answerStyle { padding-left: 25px; padding-right: 25px; }
				.ruleLength {margin-right: 70%;
								border: 1px solid;}'