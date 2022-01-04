private - axis
drawXPositionMarkBasedOn: position in: canvas

	self drawXMarkerIn: canvas.
	self
		drawLabelIn: canvas
		for: 'X'
		using: position x
		movedTo: 0 @ (distance + 25)