private
removeReaction: anUser
|reaction|
	reaction := self reactions detect: [ :r | r user = anUser ] ifNone: [ ^nil].
	(reaction isNotNil)
		ifTrue:[ likes remove: reaction ifAbsent: nil.
					dislikes remove: reaction ifAbsent: nil.
				].