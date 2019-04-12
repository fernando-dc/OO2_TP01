testing
searchTopics: aTopicsCollection
	^ (aTopicsCollection collect: [ :string | self searchOneTopic: string ]) asSet.