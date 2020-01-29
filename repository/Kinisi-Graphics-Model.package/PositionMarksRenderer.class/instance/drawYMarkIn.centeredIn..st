private - axis
drawYMarkIn: aView centeredIn: distance

	self
		drawMarkIn: aView
		from: (self fromMarkComponentAsCenteredIn: distance) negated @ 0
		to: (self toMarkComponentAsCenteredIn: distance) negated @ 0