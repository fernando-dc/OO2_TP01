rendering posts
renderPostReactions: aPost on: htmlCanvas
	htmlCanvas
		tableRow: [ htmlCanvas
				tableData: [ htmlCanvas paragraph: (aPost likes size) printString , ' likes' ].
			htmlCanvas tableData: '|'.
			htmlCanvas
				tableData: [ htmlCanvas paragraph: (aPost dislikes size) printString , ' dislikes' ] ]