actions
drawIn: aView basedOn: particle for: particleElement

	self
		drawXPositionMarkBasedOn: particle position
		in: aView
		movedFromCenterBy: distance.
	self
		drawYPositionMarkBasedOn: particle position
		in: aView
		movedFromCenterBy: distance