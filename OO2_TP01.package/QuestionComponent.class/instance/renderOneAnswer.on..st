rendering answers
renderOneAnswer: anAnswer on: htmlCanvas
	
	htmlCanvas preformatted: [ 
			htmlCanvas heading level4; with: (anAnswer heading).
			
			htmlCanvas paragraph: anAnswer text.
		 	htmlCanvas break.
			self renderPostReactions: anAnswer  on: htmlCanvas.
			self renderPostReactionButtons: anAnswer  on: htmlCanvas. 
		
		 ]