private - axis
drawXPositionMarkBasedOn: positionVector in: aView movedFromCenterBy: distance

	self drawXMarkIn: aView centeredIn: distance.
	self
		drawLabelIn: aView
		for: positionVector x
		movedTo: 0 @ (distance + 25)