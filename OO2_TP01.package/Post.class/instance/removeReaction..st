private
removeReaction: anUser
|reactionByUser |
	reactionByUser := reactions detect: [ :r | r user = anUser ] ifNone: [ ^nil].
	reactions remove: reactionByUser ifAbsent: nil.