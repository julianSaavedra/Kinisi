private
newYAxisEndPointElementIn: aView movedFromCenterBy: aPoint

	^self
		newAxisEndPointElementNamed: #y
		movedTo: (0 @ self defaultAxisSize negated) + aPoint
		in: aView 