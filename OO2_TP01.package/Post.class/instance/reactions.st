private
reactions
	| reactions |
	reactions := OrderedCollection new.
	reactions addAll: likes.
	reactions addAll: dislikes.
	^ reactions