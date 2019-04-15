initialization
createTestInstance
|pedro diego juan topico1 topico2 topico3 pregunta1 pregunta2 respuesta1 respuesta2 |

	topico1 := Topic withName: 'OO1' description:'Topico de Objetos 1'.
	topico2 := Topic withName: 'Smalltalk' description: 'Topico de smalltalk'.
	topico3 := Topic withName: 'Test de unidad' description: 'Topico de sUnit'.
	
	pedro := User withName: 'pedro@cuoora.com' password: 'pedro@cuoora.com' interests: {topico1.topico3.}.
	diego := User withName: 'diego@cuoora.com' password: 'diego@cuoora.com' interests: { }.
	juan := User withName: 'juan@cuoora.com' password: 'juan@cuoora.com'  interests: { }.
	
	pregunta1 := Question withText: '' title: 'Para que sirve el metodo setUp?'  topics: { topico1.topico3. }.
	
	pregunta2 := Question withText: '' title: 'Que significa #messageNotUnderstood ?'  topics: { topico1.topico3. }.
	
	respuesta1 := Answer withText: 'Sirve para instanciar los objetos que son evaluados por el test en un único método y que se ejecute siempre antes de cada test'.
	respuesta1 owner: diego.
	
	respuesta2 := Answer withText: 'Significa que el objeto que recibió el mensaje no encontró ningún método para ejecutar en respuesta'.
	respuesta2 owner: pedro.
	
	pregunta1 addAnswer: respuesta1.
	pregunta2 addAnswer: respuesta2.
	
	cuoora addTopic: topico1.
	cuoora addTopic: topico2.
	cuoora addTopic: topico3.
	
	cuoora addUser: pedro.
	cuoora addUser: diego.
	cuoora addUser: juan.
	
	cuoora addQuestion: pregunta1 from: pedro.
	cuoora addQuestion: pregunta2 from: diego.  
	
	