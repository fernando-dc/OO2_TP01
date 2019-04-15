tests
testCreation

	topic := Topic withName: 'topic name' description:'topic description'.
	self assert: (topic name) equals: 'topic name'.
	self assert: (topic description) equals: 'topic description'. 