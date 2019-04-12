testing
areValidTopics: aTopicsCollection
	"recibe una coleccion de strings donde cada string es un nombre de un topico y devuelve true si estan todos cargados en el sistema"
	
	^( (self searchTopics: aTopicsCollection) includes: nil) not.