private
newOriginElementIn: aView movedFromCenterBy: aPoint

	^self
		newPointElementNamed: #origin
		movedTo: 0@0 + aPoint
		in: aView