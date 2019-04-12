callbacks
login
"Le envia el mensaje #loginName:network: para iniciar sesion si se encuentra el usuario, caso contrario no se inicia."
	"self session loginName: (self request: 'Enter user name:' ) network: cuoora. "	
	self call: (LoginComponent for: cuoora) onAnswer: [ :value |
		self session login: value.
		]