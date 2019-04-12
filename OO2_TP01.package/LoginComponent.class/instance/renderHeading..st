rendering
renderHeading: htmlCanvas
	"pageHeading := htmlCanvas heading level1;	with: 'Cuoora'.
	"
	htmlCanvas tbsPageHeader:[
	htmlCanvas tbsRow
		showGrid;
		with: [ htmlCanvas
				tbsColumn: [htmlCanvas heading level1;	with: 'Cuoora'] mediumSize: 8. ]
		].