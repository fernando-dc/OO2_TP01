tests
testCreation
|answerAux|

	answerAux := Answer withText: 'text'.
	self assert: answerAux text equals: 'text'.
	self assert: answerAux reactions isEmpty.
	