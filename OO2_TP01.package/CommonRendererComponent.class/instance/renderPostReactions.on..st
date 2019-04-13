rendering posts
renderPostReactions: aPost on: htmlCanvas
	"
	htmlCanvas paragraph: [ 
			htmlCanvas span: (aPost likes size) printString , ' likes'.
			htmlCanvas span: ' | ' .
			htmlCanvas span: (aPost dislikes size) printString , ' dislikes'.
	].
	"
		
	htmlCanvas tbsRow: [ 
			htmlCanvas tbsColumn mediumSize:1; with:[htmlCanvas span: (aPost likes size) printString , ' likes'].
			
			htmlCanvas tbsColumn mediumSize:1; with:[htmlCanvas span: (aPost dislikes size) printString , ' dislikes'].
	].