instance creation
movedFromCenterBy: distance
 
	self assertValid: distance.
	^self movedTo: distance negated @ distance