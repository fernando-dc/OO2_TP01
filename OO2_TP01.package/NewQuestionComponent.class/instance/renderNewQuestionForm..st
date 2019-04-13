rendering
renderNewQuestionForm: htmlCanvas

	htmlCanvas form: [
		htmlCanvas table cellpadding: 100; cellspacing:100; with:[
				htmlCanvas tableRow:[
						htmlCanvas tableHeading:[htmlCanvas text: 'Title:'.].
						htmlCanvas tableData:[htmlCanvas textInput on:#title of: self;size: 60.].
				].
				
				htmlCanvas tableRow:[
						htmlCanvas tableHeading:[htmlCanvas text: 'Description:'.].
						htmlCanvas tableData:[htmlCanvas textInput class: 'increasedHeight'; on:#text of: self;size: 60. ].
				].
				htmlCanvas tableRow:[
						htmlCanvas tableHeading:[htmlCanvas text:'Topics:'.].
						htmlCanvas tableData:[htmlCanvas textInput on: #topics of: self;size: 60; placeholder: 'Input each topic separated by a comma(,) like: topic1,topic2,...'].
				].
			htmlCanvas tableRow:[
					htmlCanvas tableData:[].
					htmlCanvas tableData:[
							htmlCanvas tbsButton callback: [ self saveQuestion ]; beSuccess; with: 'Save'.
							htmlCanvas tbsButton callback: [ self answer ]; beDefault; with: 'Cancel'.
					].
			].
		].
	].