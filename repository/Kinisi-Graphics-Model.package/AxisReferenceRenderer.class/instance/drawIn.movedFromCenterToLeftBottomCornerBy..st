actions
drawIn: aView movedFromCenterToLeftBottomCornerBy: distance

	self
		drawIn: aView
		movedFromCenterBy: distance negated @ distance
	