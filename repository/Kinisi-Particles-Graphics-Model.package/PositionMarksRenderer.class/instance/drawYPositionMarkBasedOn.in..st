private - axis
drawYPositionMarkBasedOn: position in: canvas

	self drawYMarkerIn: canvas.
	self
		drawLabelIn: canvas
		for: 'Y'
		using: position y
		movedTo: distance negated @ 0