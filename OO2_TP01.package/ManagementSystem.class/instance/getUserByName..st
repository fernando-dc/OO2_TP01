accessing
getUserByName: anUserName
"Busca el usuario por nombre y lo devuelve, si no esta en la coleccion de usuarios devuelve nil"
	^users detect: [ :user | user name = anUserName  ] ifNone: [ ^nil ].