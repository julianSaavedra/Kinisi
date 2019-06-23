actions
drawIn: aView basedOn: positionVector movedFromCenterBy: distance

	self
		drawXPositionMarkBasedOn: positionVector
		in: aView
		movedFromCenterBy: distance.
	self
		drawYPositionMarkBasedOn: positionVector
		in: aView
		movedFromCenterBy: distance