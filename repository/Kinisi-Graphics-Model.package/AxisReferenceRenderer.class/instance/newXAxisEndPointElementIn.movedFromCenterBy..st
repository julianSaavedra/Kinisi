private
newXAxisEndPointElementIn: aView movedFromCenterBy: aPoint

	^self
		newAxisEndPointElementNamed: #x
		movedTo: (self defaultAxisSize @ 0) + aPoint
		in: aView 