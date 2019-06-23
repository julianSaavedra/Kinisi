private - axis
drawYPositionMarkBasedOn: positionVector in: aView movedFromCenterBy: distance

	self drawYMarkIn: aView centeredIn: distance.
	self
		drawLabelIn: aView
		for: positionVector y
		movedTo: distance negated @ 0