private - axis
drawXPositionMarkBasedOn: positionVector in: aView movedFromCenterBy: distance

	self drawXMarkIn: aView centeredIn: distance.
	self
		drawLabelIn: aView
		for: 'X'
		using: positionVector x
		movedTo: 0 @ (distance + 25)