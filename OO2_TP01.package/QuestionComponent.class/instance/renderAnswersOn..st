rendering answers
renderAnswersOn: htmlCanvas
"muestra las respuestas en orden cronologico"
	((question answers) asSortedCollection: [ :q1 :q2 | q1 creationDate <= q2 creationDate ]) do: [ :answer | self renderOneAnswer: answer on: htmlCanvas. htmlCanvas horizontalRule. ]