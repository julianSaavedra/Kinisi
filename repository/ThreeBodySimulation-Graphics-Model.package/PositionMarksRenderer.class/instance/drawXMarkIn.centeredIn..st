private - axis
drawXMarkIn: aView centeredIn: distance

	self
		drawMarkIn: aView
		from: 0 @ (self fromMarkComponentAsCenteredIn: distance)
		to: 0 @ (self toMarkComponentAsCenteredIn: distance)