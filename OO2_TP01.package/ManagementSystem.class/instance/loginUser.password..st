logging
loginUser: anUserString password: aPassword
"Se busca el usuario en el sistema y se valida si la password es correcta, si todo es valido se devuelve el usuario, caso contrario se retorna nil"
| user |
	user := self getUserByName: anUserString.
	(user isNotNil)
			ifTrue:[
					(user password = aPassword)
					ifTrue:[ ^ user]
			].
	^ nil.