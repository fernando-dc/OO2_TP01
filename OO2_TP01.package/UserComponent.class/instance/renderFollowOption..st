rendering
renderFollowOption: htmlCanvas
	
	((self session isLoggedIn ) not)
			ifTrue: [ ^ self ].
			
			
	(self session user = user) not"Si el usuario loggeado no es el mismo del perfil"
			ifTrue:[
					(self session user follows includes: user) "Si el usuario loggeado sigue al usuario del perfil actual"
							ifTrue:[
									htmlCanvas anchor callback: [ self removeFollower ]; with: 'unfollow'.
							]
							ifFalse:[
									htmlCanvas anchor callback: [ self followUser ];with: ' follow'
							].
			]