rendering heading
renderHeading: htmlCanvas
	"pageHeading := htmlCanvas heading level1;	with: 'Cuoora'.
	"
	htmlCanvas tbsPageHeader:[
	htmlCanvas tbsRow
		showGrid;
		with: [ htmlCanvas
				tbsColumn: [htmlCanvas heading level1;	with: [htmlCanvas anchor callback:[ self goToHomePage: cuoora ];with:'Cuoora' ]] mediumSize: 8.
			htmlCanvas tbsColumn: [self renderLogin: htmlCanvas] mediumSize: 4 ]
		].