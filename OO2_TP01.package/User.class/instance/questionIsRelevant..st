testing
questionIsRelevant: aQuestion
	"pregunta si hay algun elemento en comun entre los topicos de la pregunta y los intereses del usuario (si la interseccion no es vacia)"
	" o pregunta si el creador de la pregunta esta entre las personas a las que sigue el usuario"
	
	^	(aQuestion topics includesAny: interests)  
		or:
		(follows includes: (aQuestion owner)) 