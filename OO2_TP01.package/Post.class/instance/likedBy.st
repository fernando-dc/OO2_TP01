accessing
likedBy
	^ (self likes) collect: [ :like | like user ].