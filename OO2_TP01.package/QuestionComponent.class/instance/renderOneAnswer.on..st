rendering answers
renderOneAnswer: anAnswer on: htmlCanvas
	
	htmlCanvas tbsWell: [ 
			htmlCanvas heading level4; with: (anAnswer heading).
			
			htmlCanvas paragraph: anAnswer text.
		 	htmlCanvas break.
			self renderPostReactions: anAnswer  on: htmlCanvas.
			(self session isLoggedIn)
					ifTrue: [	self renderPostReactionButtons: anAnswer  on: htmlCanvas.].
		
		 ]